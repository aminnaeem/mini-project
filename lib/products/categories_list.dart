import 'package:mini_project/products/product_images.dart';

class Categories {
  final String title, image;
  final int id;

  Categories({
    required this.id,
    required this.title,
    required this.image
  });
}

List categories = [
  Categories(
    id: 1,
    title: "Fruits & Vegies",
    image: ProductCategories.fruitsVegies
  ),
  Categories(
    id: 2,
    title: "Frozen Chicken & Meat",
    image: ProductCategories.chickenMeat
  ),
  Categories(
    id: 3,
    title: "Oil & Ghee",
    image: ProductCategories.oilGhee
  ),
  Categories(
    id: 4,
    title: "Tea, Coffee & Sugar",
    image: ProductCategories.teaCoffeeSugar
  ),
  Categories(
    id: 5,
    title: "Atta, Daal, Chaawal",
    image: ProductCategories.attaRice
  ),
  Categories(
    id: 6,
    title: "Chocolates & Deserts",
    image: ProductCategories.chocolates
  ),
  Categories(
    id: 7,
    title: "Laundry",
    image: ProductCategories.laundry
  ),
  Categories(
    id: 8,
    title: "Kitchen Supplies",
    image: ProductCategories.kitchen
  ),
  Categories(
    id: 9,
    title: "Beverages",
    image: ProductCategories.beverages
  ),
  Categories(
    id: 10,
    title: "Personal Care",
    image: ProductCategories.personalCare
  ),
  Categories(
    id: 11,
    title: "Health & Wellness",
    image: ProductCategories.healthWellness
  ),
];