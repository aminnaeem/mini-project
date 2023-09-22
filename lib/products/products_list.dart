import 'package:flutter/material.dart';
import 'package:mini_project/products/product_images.dart';

class Product {
  final String image, title, description, category;
  final int price, id;
  final Color color;
  Product({
    required this.image,
    required this.title,
    required this.description,
    required this.price,
    required this.category,
    required this.id,
    required this.color
  });
}

List products = [
  Product(
    id: 1,
    image: FruitsImages.greenCoconut,
    title: "Green Coconut",
    description: "Green Coconut with full of refreshing water, gives you strength for your whole day",
    price: 450,
    category: "Fruits",
    color: Color(0xFF58D68D),
  ),
  Product(
    id: 2,
    image: FruitsImages.beejuMelon,
    title: "Beeju Melun (Garma)",
    description: "Beeju Melun (Garma) - 1 Piece - 800 gm to 1 kg",
    price: 450,
    category: "Fruits",
    color: Color(0xFFF7DC6F),
  ),
  Product(
    id: 3,
    image: FruitsImages.pear,
    title: "Pear (Nashpati)",
    description: "Pear (Nashpati) - 500 gm",
    price: 250,
    category: "Fruits",
    color: Color(0xFFDEED43),
  ),
  Product(
    id: 4,
    image: FruitsImages.grapefruit,
    title: "Grapefruit",
    description: "Grapefruit - 1 Peice",
    price: 120,
    category: "Fruits",
    color: Color(0xFFF9E79F),
  ),
  Product(
    id: 5,
    image: FruitsImages.coconut,
    title: "Coconut",
    description: "Coconut - 1 Piece",
    price: 450,
    category: "Fruits",
    color: Color(0xFFCA6F1E),
  ),
  Product(
    id: 6,
    image: FruitsImages.plum,
    title: "Plum",
    description: "Plum - 500 Gram",
    price: 250,
    category: "Fruits",
    color: Color(0xFF673147),
  ),
  Product(
    id: 7,
    image: FruitsImages.grapes,
    title: "PGrapes (Angoor)",
    description: "Grapes (Angoor) - 500 Gram",
    price: 220,
    category: "Fruits",
    color: Color(0xFF71D854),
  ),
  Product(
    id: 8,
    image: FruitsImages.mango,
    title: "Mango (Chaunsa)",
    description: "Mango (Chaunsa) - 1 Kg",
    price: 350,
    category: "Fruits",
    color: Color(0xFFF5E02B),
  ),
  Product(
    id: 9,
    image: FruitsImages.greenApples,
    title: "Juicy Green Apples",
    description: "Juicy Green Apples - 1 kg",
    price: 300,
    category: "Fruits",
    color: Color(0xFFA7F52B),
  ),
  Product(
    id: 10,
    image: FruitsImages.bananas,
    title: "Bananas",
    description: "Bananas - 1 Dozen",
    price: 220,
    category: "Fruits",
    color: Color(0xFFEBF81F),
  ),
  Product(
    id: 11,
    image: FruitsImages.redApples,
    title: "Red Apples",
    description: "Red Apples - 1 kg",
    price: 450,
    category: "Fruits",
    color: Color(0xFFF94E4E),
  ),
  Product(
    id: 12,
    image: FruitsImages.oranges,
    title: "Oranges",
    description: "Oranges - 1 Dozen",
    price: 400,
    category: "Fruits",
    color: Color(0xFFF9A34E),
  ),
  Product(
    id: 13,
    image: FruitsImages.waterMelon,
    title: "Water Melon",
    description: "Water Melon - 1 Piece - 4 to 5 kg",
    price: 600,
    category: "Fruits",
    color: Color(0xFF4EF984),
  ),
  Product(
    id: 14,
    image: FruitsImages.pomegranate,
    title: "Pomegranate",
    description: "Pomegranate - 4 Piece - 1 to 2 kg",
    price: 800,
    category: "Fruits",
    color: Color(0xFFD93C3C ),
  ),
  Product(
    id: 15,
    image: FruitsImages.plum,
    title: "Plum",
    description: "Plum - 500 Gram",
    price: 250,
    category: "Vegies",
    color: Color(0xFF673147),
  ),
  Product(
    id: 16,
    image: FruitsImages.plum,
    title: "Plum",
    description: "Plum - 500 Gram",
    price: 250,
    category: "Vegies",
    color: Color(0xFF673147),
  ),
  Product(
    id: 17,
    image: FruitsImages.plum,
    title: "Plum",
    description: "Plum - 500 Gram",
    price: 250,
    category: "Vegies",
    color: Color(0xFF673147),
  ),
  Product(
    id: 18,
    image: FruitsImages.plum,
    title: "Plum",
    description: "Plum - 500 Gram",
    price: 250,
    category: "Vegies",
    color: Color(0xFF673147),
  ),
  Product(
    id: 19,
    image: FruitsImages.plum,
    title: "Plum",
    description: "Plum - 500 Gram",
    price: 250,
    category: "Vegies",
    color: Color(0xFF673147),
  ),
];


List CategoriesList = [
  {
    "Fruits & Vegies" : [
      {
        "Fruits" : [
          {"Name" : "Green Coconut Full of Water", "Price" : 450, "Image" : FruitsImages.greenCoconut},
          {"Name" : "Beeju Melun (Garma) - 1 Piece - 800 gm to 1 kg", "Price" : 450, "Image" : FruitsImages.beejuMelon},
          {"Name" : "Pear (Nashpati) - 500 gm", "Price" : 250, "Image" : FruitsImages.pear},
          {"Name" : "Grapefruit - 1 Piece", "Price" : 120, "Image" : FruitsImages.grapefruit},
          {"Name" : "Coconut - 1 Piece", "Price" : 450, "Image" : FruitsImages.coconut},
          {"Name" : "Plum - 500 gm", "Price" : 250, "Image" : FruitsImages.plum},
          {"Name" : "Grapes (Angoor) - 500 gm", "Price" : 220, "Image" : FruitsImages.grapes},
          {"Name" : "Mango (Chaunsa) - 1 kg", "Price" : 350, "Image" : FruitsImages.mango},
          {"Name" : "Juicy Green Apples - 1 kg", "Price" : 300, "Image" : FruitsImages.greenApples},
          {"Name" : "Bananas - 1 Dozen", "Price" : 220, "Image" : FruitsImages.bananas},
          {"Name" : "Red Apples - 1 kg", "Price" : 450, "Image" : FruitsImages.redApples},
          {"Name" : "Oranges - 1 Dozen", "Price" : 400, "Image" : FruitsImages.oranges},
          {"Name" : "Water Melon - 1 Piece - 4 to 5 kg", "Price" : 600, "Image" : FruitsImages.waterMelon},
          {"Name" : "Pomegranate - 4 Piece - 1 to 2 kg", "Price" : 800, "Image" : FruitsImages.pomegranate},
        ],
        "Vegies" : [
          {"Name" : "Beetroot (Chukandar) - 1 kg", "Price" : 150, "Image" : VegiesImages.beetRoot},
          {"Name" : "Bringal (Began) - 1 kg", "Price" : 80, "Image" : VegiesImages.bringal},
          {"Name" : "Cabbage (Patta Gobi) - 1 kg", "Price" : 160, "Image" : VegiesImages.cabbage},
          {"Name" : "Carrots - 3 kg", "Price" : 320, "Image" : VegiesImages.carrots},
          {"Name" : "CauliFlower (Phool Gobi)", "Price" : 450, "Image" : VegiesImages.cauliFlower},
          {"Name" : "Coriander (Dhania) - 3 Bundles", "Price" : 90, "Image" : VegiesImages.coriander},
          {"Name" : "Cucumber - 2 kg", "Price" : 220, "Image" : VegiesImages.cucumber},
          {"Name" : "Ginger - 500 gm", "Price" : 450, "Image" : VegiesImages.ginger},
          {"Name" : "Mint Leaves (Podina) - 2 Bundles", "Price" : 100, "Image" : VegiesImages.mintLeaves},
          {"Name" : "Onion - 1 kg", "Price" : 120, "Image" : VegiesImages.onion},
          {"Name" : "Peas (Matar) - 500 gm", "Price" : 450, "Image" : VegiesImages.pea},
          {"Name" : "Potatoes - 1 kg", "Price" : 110, "Image" : VegiesImages.potato},
          {"Name" : "Tomatoes - 2 kg", "Price" : 300, "Image" : VegiesImages.tomato},
        ]
      }
    ],
    "Category Image" : ProductCategories.fruitsVegies
  },
  {
    "Frozen Chicken & Meat" : [
      {
        "Fruits" : [
          {"Name" : "Green Coconut Full of Water", "Price" : 450, "Image" : FruitsImages.greenCoconut},
        ]
      }
    ],
    "Category Image" : ProductCategories.chickenMeat
  },
  {
    "Oil & Ghee" : [
      {
        "Fruits" : [
          {"Name" : "Green Coconut Full of Water", "Price" : 450, "Image" : FruitsImages.greenCoconut},
        ]
      }
    ],
    "Category Image" : ProductCategories.oilGhee
  },
  {
    "Tea, Coffee & Sugar" : [
      {
        "Fruits" : [
          {"Name" : "Green Coconut Full of Water", "Price" : 450, "Image" : FruitsImages.greenCoconut},
        ]
      }
    ],
    "Category Image" : ProductCategories.teaCoffeeSugar
  },
  {
    "Atta, Daal, Chaawal" : [
      {
        "Fruits" : [
          {"Name" : "Green Coconut Full of Water", "Price" : 450, "Image" : FruitsImages.greenCoconut},
        ]
      }
    ],
    "Category Image" : ProductCategories.attaRice
  },
  {
    "Chocolates & Deserts" : [
      {
        "Fruits" : [
          {"Name" : "Green Coconut Full of Water", "Price" : 450, "Image" : FruitsImages.greenCoconut},
        ]
      }
    ],
    "Category Image" : ProductCategories.chocolates
  },
  {
    "Laundry" : [
      {
        "Fruits" : [
          {"Name" : "Green Coconut Full of Water", "Price" : 450, "Image" : FruitsImages.greenCoconut},
        ]
      }
    ],
    "Category Image" : ProductCategories.laundry
  },
  {
    "Kitchen Supplies" : [
      {
        "Fruits" : [
          {"Name" : "Green Coconut Full of Water", "Price" : 450, "Image" : FruitsImages.greenCoconut},
        ]
      }
    ],
    "Category Image" : ProductCategories.kitchen
  },
  {
    "Beverages" : [
      {
        "Fruits" : [
          {"Name" : "Green Coconut Full of Water", "Price" : 450, "Image" : FruitsImages.greenCoconut},
        ]
      }
    ],
    "Category Image" : ProductCategories.beverages
  },
  {
    "Personal Care" : [
      {
        "Fruits" : [
          {"Name" : "Green Coconut Full of Water", "Price" : 450, "Image" : FruitsImages.greenCoconut},
        ]
      }
    ],
    "Category Image" : ProductCategories.personalCare
  },
  {
    "Health & Wellness" : [
      {
        "Fruits" : [
          {"Name" : "Green Coconut Full of Water", "Price" : 450, "Image" : FruitsImages.greenCoconut},
        ]
      }
    ],
    "Category Image" : ProductCategories.healthWellness
  }
];


