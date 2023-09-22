import 'package:flutter/material.dart';
import 'package:mini_project/products/products_list.dart';
import 'package:mini_project/widgets/buttons.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final void Function()? press;
  const ItemCard({
    super.key, required this.product, required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        decoration: BoxDecoration(
          color: product.color,
          borderRadius: BorderRadius.circular(12)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                width: 180,
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: Image.asset(product.image),
                      padding: EdgeInsets.all(20),  
                    ),
                    Container(
                      alignment: Alignment.bottomRight,
                      child: AddToCartPlusButton(),
                      padding: EdgeInsets.only(right: 15)
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20),
              child: Text("Rs. ${product.price}",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
              child: Text("${product.title}",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}