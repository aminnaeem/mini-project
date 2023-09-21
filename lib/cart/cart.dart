import 'package:mini_project/products/category_wise.dart';

class Cart {
  final product;
  final int numOfItems;

  Cart({required this.product, required this.numOfItems});
}

List<Cart> demoCarts = [
  Cart(product: CategoriesList[0]["Fruits & Vegies"][0]["Fruits"][0], numOfItems: 3),
  Cart(product: CategoriesList[0]["Fruits & Vegies"][0]["Fruits"][1], numOfItems: 3),
  Cart(product: CategoriesList[0]["Fruits & Vegies"][0]["Fruits"][2], numOfItems: 2),
  Cart(product: CategoriesList[0]["Fruits & Vegies"][0]["Fruits"][3], numOfItems: 1),
];