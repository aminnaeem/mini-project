import 'package:flutter/material.dart';
import 'package:mini_project/constants/colors.dart';
import 'package:mini_project/widgets/buttons.dart';

class ItemCard extends StatelessWidget {
  final product;
  final void Function()? press;
  const ItemCard({
    super.key, this.product, required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.blackShade01,
          borderRadius: BorderRadius.circular(12)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Container(
                      child: Image.asset('assets/images/products/categories/chickenMeat.png'),
                      padding: EdgeInsets.all(20),  
                    ),
                    Container(
                      child: AddToCartPlusButton(),
                      padding: EdgeInsets.only(right: 15)
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20),
              child: Text("Rs. 500",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20, left: 20),
              child: Text("Meat",
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