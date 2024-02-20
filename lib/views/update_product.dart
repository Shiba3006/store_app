import 'package:flutter/material.dart';
import 'package:store_app/widgets/custom_app_bar.dart';
import 'package:store_app/widgets/custom_button.dart';
import 'package:store_app/widgets/custom_text_field.dart';

class UpdateProductView extends StatelessWidget {
  UpdateProductView({
    super.key,
    this.name,
    this.description,
    this.image,
    this.price,
  });
  static String id = 'UpdateProduct';

  String? name, description, image;
  int? price;

  @override
  Widget build(BuildContext context) {
    const Widget _ = SizedBox(
      height: 10,
    );
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Update Product',
        icon: null,
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
                  price = int.parse(value);
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
              const CustomButton(
                buttonText: 'Update',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
