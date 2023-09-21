import 'package:flutter/material.dart';
import 'package:mini_project/cart/cart_view.dart';
import 'package:mini_project/constants/colors.dart';

class CartButton extends StatelessWidget {
  const CartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => Navigator.pushNamed(context, CartView.routeName),
      icon: Image.asset('assets/icons/Cart-Icon.png')
    );
  }
}

class SearchButton extends StatelessWidget {
  const SearchButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: (){},
      icon: Image.asset('assets/icons/Search Icon.png')
    );
  }
}

class AddToCartPlusButton extends StatelessWidget {
  const AddToCartPlusButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: AppColors.blueShade1
        ),
        width: 24,
        height: 24,
        child: Center(
          child: Icon(Icons.add,
            size: 20,
            color: AppColors.blackShade001,
          ),
        ),
      ),
    );
  }
}