import 'dart:convert';

import 'package:store_app/helper/api.dart';
import 'package:store_app/models/product_model.dart';

//https://fakestoreapi.com/products/category/$categoryName
class CategoriesService {
  Future<List<ProductModel>> getCategoriesProducts(
      {required String categoryName}) async {
    List<dynamic> data = await Api().get(
      url: 'https://fakestoreapi.com/products/category/$categoryName',
    );
    List<ProductModel> productsList = [];

    for (var element in data) {
      productsList.add(ProductModel.fromJson(element));
    }
    return productsList;
  }
}
