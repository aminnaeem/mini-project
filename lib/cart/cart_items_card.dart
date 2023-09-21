import 'package:flutter/material.dart';
import 'package:mini_project/cart/cart.dart';
import 'package:mini_project/constants/colors.dart';

class CartItemsCard extends StatelessWidget {
  const CartItemsCard({
    super.key, required this.cart,
  });

  final Cart cart;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width*0.2,
          child: AspectRatio(
            aspectRatio: 0.88,
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: AppColors.blackShade02,
                borderRadius: BorderRadius.circular(15)
              ),
              child: Image.asset(cart.product["Image"].toString()),
            ),
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width*0.1,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "${cart.product["Name"]}",
              style: TextStyle(
                fontSize: 16,
                color: AppColors.blackShade09
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: 10,),
            Text.rich(
              TextSpan(
                text: "Rs. ${cart.product["Price"]}",
                style: TextStyle(
                  fontWeight: FontWeight.w600
                ),
                children: [
                  TextSpan(
                    text: " x ${cart.numOfItems}",
                    style: TextStyle(
                      color: AppColors.blackShade06
                    )
                  )
                ]
              )
            )
          ],
        )
      ],
    );
  }
}