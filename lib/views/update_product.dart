import 'package:flutter/material.dart';
import 'package:store_app/widgets/custom_app_bar.dart';
import 'package:store_app/widgets/custom_button.dart';
import 'package:store_app/widgets/custom_text_field.dart';

class UpdateProductView extends StatelessWidget {
  const UpdateProductView({super.key});
  static String id = 'UpdateProduct';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: 'Update Product',
        icon: null,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            CustomTextField(
              hintText: 'product name',
            ),
            SizedBox(
              height: 10,
            ),
            CustomTextField(
              hintText: 'price',
            ),
            SizedBox(
              height: 10,
            ),
            CustomTextField(
              hintText: 'description',
            ),
            SizedBox(
              height: 10,
            ),
            CustomTextField(
              hintText: 'image',
            ),
            SizedBox(
              height: 50,
            ),
            CustomButton(
              buttonText: 'Update',
            ),
          ],
        ),
      ),
    );
  }
}
