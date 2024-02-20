import 'dart:convert';

import 'package:store_app/models/product_model.dart';
import 'package:http/http.dart' as http;

class GetallProductsService {
  Future<List<ProductModel>> getAllProducts() async {
    http.Response response =
        await http.get(Uri.parse('https://fakestoreapi.com/products'));
    List<ProductModel> productsList = [];
    List<dynamic> data = jsonDecode(response.body);
    for (var element in data) {
      productsList.add(ProductModel.fromJson(element));
    }
    return productsList;
  }
}
