import 'package:flutter/material.dart';
import 'package:mini_project/constants/colors.dart';

class BuyNowBtn extends StatelessWidget {
  const BuyNowBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 50,
        child: TextButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
            )),
            backgroundColor: MaterialStateProperty.all(AppColors.blueShade1)
          ),
          onPressed: (){},
          child: Text("Buy Now".toUpperCase(),
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: AppColors.blackShade001
            ),
          )
        ),
      ),
    );
  }
}
