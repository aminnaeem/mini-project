import 'package:flutter/material.dart';
import 'package:mini_project/cart/cart.dart';
import 'package:mini_project/cart/cart_body.dart';
import 'package:mini_project/constants/colors.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  static String routeName = "/cart";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text(
              "Your Cart",
              style: TextStyle(
                color: AppColors.blackShade09
              ),
            ),
            Text(
              "${demoCarts.length} Items",
              style: Theme.of(context).textTheme.caption,
            )
          ],
        ),
      ),
      body: CartBody(),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(
          vertical: 30,
          horizontal: 40
        ),
        height: 230,
        decoration: BoxDecoration(
          color: AppColors.blackShade01,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30)
          ),
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              offset: Offset(0, -15),
              color: AppColors.blackShade10.withOpacity(0.15)
            )
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Subtotal",
                style: TextStyle(
                  color: AppColors.blackShade06,
                  fontSize: 14,
                  fontWeight: FontWeight.w400
                ),),
                Text("Rs. 4000/-",
                style: TextStyle(
                  color: AppColors.blackShade09,
                  fontSize: 14,
                  fontWeight: FontWeight.w500
                ),),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Delivery",
                style: TextStyle(
                  color: AppColors.blackShade06,
                  fontSize: 14,
                  fontWeight: FontWeight.w400
                ),),
                Text("Rs. 4000/-",
                style: TextStyle(
                  color: AppColors.blackShade09,
                  fontSize: 14,
                  fontWeight: FontWeight.w500
                ),),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Total",
                style: TextStyle(
                  color: AppColors.blackShade06,
                  fontSize: 14,
                  fontWeight: FontWeight.w400
                ),),
                Text("Rs. 4000/-",
                style: TextStyle(
                  color: AppColors.blackShade09,
                  fontSize: 14,
                  fontWeight: FontWeight.w500
                ),),
              ],
            ),
            InkWell(
              onTap: (){},
              child: Container(
                alignment: Alignment.center,
                width: 327,
                height: 56,
                decoration: BoxDecoration(
                  color: AppColors.blueShade2,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Text(
                  "Proceed to Checkout",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: AppColors.blackShade001
                  ),
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}