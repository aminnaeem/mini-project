import 'package:flutter/material.dart';
import 'package:mini_project/constants/colors.dart';

class AddtoCartBtn extends StatelessWidget {
  const AddtoCartBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: InkWell(
        child: Container(
          margin: EdgeInsets.only(right: 20),
          alignment: Alignment.center,
          height: 50,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: AppColors.blueShade1)
          ),
          child: Text(
            "Add to Cart",
            style: TextStyle(
              color: AppColors.blueShade1,
              fontWeight: FontWeight.w600
            ),
          )
        ),
      ),
    );
  }
}

