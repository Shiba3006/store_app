import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/services/update_product_service.dart';
import 'package:store_app/widgets/custom_app_bar.dart';
import 'package:store_app/widgets/custom_button.dart';
import 'package:store_app/widgets/custom_text_field.dart';

class UpdateProductView extends StatefulWidget {
  const UpdateProductView({
    super.key,
  });
  static String id = 'UpdateProduct';

  @override
  State<UpdateProductView> createState() => _UpdateProductViewState();
}

class _UpdateProductViewState extends State<UpdateProductView> {
  String? name, description, image, price;
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    ProductModel productModel =
        ModalRoute.of(context)!.settings.arguments as ProductModel;
    const Widget _ = SizedBox(
      height: 10,
    );
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        appBar: const CustomAppBar(
          title: 'Update Product',
          backIcon: Icons.arrow_back_ios,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 100,
                ),
                CustomTextField(
                  hintText: 'product name',
                  onChanged: (value) {
                    name = value;
                  },
                ),
                _,
                CustomTextField(
                  hintText: 'price',
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    price = value;
                  },
                ),
                _,
                CustomTextField(
                    hintText: 'description',
                    onChanged: (value) {
                      description = value;
                    }),
                _,
                CustomTextField(
                    hintText: 'image',
                    onChanged: (value) {
                      image = value;
                    }),
                const SizedBox(
                  height: 50,
                ),
                CustomButton(
                  buttonText: 'Update',
                  onPressed: () {
                    setState(() {
                      isLoading = true;
                    });
                    try {
                      updateProduct(productModel);
                      Navigator.pop(context);
                      print('product updated');
                    } catch (e) {
                      print(e.toString());
                    }
                    setState(() {
                      isLoading = false;
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void updateProduct(ProductModel productModel) {
    UpdateProductService().updateProduct(
      id: productModel.id.toString(),
      title: name!,
      price: price!,
      description: description!,
      image: image!,
      category: productModel.category,
    );
  }
}
