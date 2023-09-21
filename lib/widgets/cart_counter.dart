import 'package:flutter/material.dart';

class CartCounter extends StatefulWidget {
  const CartCounter({super.key});

  @override
  State<CartCounter> createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItems = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomOutlineButton(
         icon: Icons.remove,
         press:  () {
          if (numOfItems > 1) {
            setState(() {
            numOfItems--;
          });
          }
         }
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(numOfItems.toString().padLeft(2,"0"), style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600
          ),),
        ),
        CustomOutlineButton(
          icon: Icons.add,
          press: () {
            setState(() {
              numOfItems++;
            });
          }
        )
      ],
    );
  }

  SizedBox CustomOutlineButton({required IconData icon, required void Function()? press}) {
    return SizedBox(
        width: 32,
        height: 32,
        child: OutlinedButton(
          style: ButtonStyle(
            padding: MaterialStateProperty.all(EdgeInsets.zero),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)))
          ),
          onPressed: press,
          child: Icon(icon)
        ),
      );
  }
}