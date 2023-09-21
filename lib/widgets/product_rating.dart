import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mini_project/constants/colors.dart';

class ProductRating extends StatelessWidget {
  const ProductRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset("assets/icons/rating-stars.svg"),
        SizedBox(
          width: 5,
        ),
        Text("110 Reviews",
          style: TextStyle(
            color: AppColors.blackShade045,
            fontSize: 14,
            fontWeight: FontWeight.w400
          ),
        ),
      ],
    );
  }
}