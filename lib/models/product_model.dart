class ProductModel {
  ProductModel(
      {required this.name,
      required this.price,
      required this.image,
      required this.description});

  num price;
  String name;
  String image;
  String description;

  static List<ProductModel> getData(dynamic json) {
    List<ProductModel> products = [];

    for (var product in json['data']['products']) {
      products.add(ProductModel(
          name: product['name'],
          price: product['price'],
          image: product['image'],
          description: product['description']));
    }
    return products;
  }
}
