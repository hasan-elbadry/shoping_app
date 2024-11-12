import 'package:flutter/cupertino.dart';
import 'package:shoping_app/models/product_model.dart';
import 'package:shoping_app/services/product_service.dart';

class ProductProvider extends ChangeNotifier {
  List<ProductModel> products = [];

  Future<void> getAll() async {
    products = await ProductService().getData();
    print(products);
    notifyListeners();
  }
}
