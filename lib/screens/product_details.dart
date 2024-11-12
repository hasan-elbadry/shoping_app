import 'package:flutter/material.dart';
import 'package:shoping_app/models/product_model.dart';

class ProductDetails extends StatelessWidget {
  ProductDetails({super.key, required this.model});

  ProductModel model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Details'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              model.image ?? '',
            ),
            Text(
              model.name ?? '',
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Text(
              model.description ?? '',
              textAlign: TextAlign.center,
            ),
            Text(model.price.toString() ?? '')
          ],
        ),
      ),
    );
  }
}
