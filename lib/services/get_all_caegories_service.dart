import 'package:store_app/helper/api.dart';

//https://fakestoreapi.com/products/categories
class GetAllCategoriesService {
  Future<List<dynamic>> getAllCategories() async {
    List<dynamic> data = await Api().get(
      url: 'https://fakestoreapi.com/products/categories',
    );
    return data;
  }
}
