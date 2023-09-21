import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mini_project/constants/colors.dart';
import 'package:mini_project/widgets/cart_counter.dart';

class CountWithFavBtn extends StatelessWidget {
  const CountWithFavBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CartCounter(),
        Container(
          padding: EdgeInsets.all(8),
          height: 32,
          width: 32,
          decoration: BoxDecoration(
            color: Color(0xFFFF6464),
            shape: BoxShape.circle
          ),
          child: SvgPicture.asset("assets/icons/heart-icon1.svg",
            colorFilter: ColorFilter.mode(AppColors.blackShade001, BlendMode.srcIn),
          ),
        )
      ],
    );
  }
}

