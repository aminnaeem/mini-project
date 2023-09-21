import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mini_project/cart/cart.dart';
import 'package:mini_project/cart/cart_items_card.dart';
import 'package:mini_project/constants/colors.dart';
import 'package:mini_project/constants/icons.dart';

class CartBody extends StatefulWidget {
  const CartBody({super.key});

  @override
  State<CartBody> createState() => _CartBodyState();
}

class _CartBodyState extends State<CartBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.blackShade001,
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 16),
        child: ListView.builder(
          itemCount: demoCarts.length,
          itemBuilder: (context, index) =>Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Dismissible(
              key: Key(demoCarts[index].product.toString()),
              direction: DismissDirection.endToStart,
              background: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Color(0xFFFFE6E6),
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Row(
                  children: [
                    Spacer(),
                    SvgPicture.asset(ExtraIcons.trash,
                      height: 20,
                    )
                  ],
                ),
              ),
              onDismissed:(direction) {
                setState(() {
                  demoCarts.removeAt(index);
                });
              },
              child: CartItemsCard(cart: demoCarts[index],)
            ),
          ),
        ),
      )
    );
  }
}

