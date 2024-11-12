import 'package:dio/dio.dart';
import 'package:shoping_app/models/product_model.dart';

class ProductService {
  static var dio = Dio();

  Future<List<ProductModel>> getData() async {
    var response = await dio.get('https://student.valuxapps.com/api/home');
    return ProductModel.getData(response.data);
  }
}
