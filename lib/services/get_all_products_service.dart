

import 'package:store_app/helper/api.dart';
import 'package:store_app/models/product_model.dart';

//https://fakestoreapi.com/products
class GetallProductsService {
  Future<List<ProductModel>> getAllProducts() async {
    List<dynamic> data = await Api().get(
      url: 'https://fakestoreapi.com/products',
    );
    List<ProductModel> productsList = [];

    for (var element in data) {
      productsList.add(ProductModel.fromJson(element));
    }
    return productsList;
  }
}
