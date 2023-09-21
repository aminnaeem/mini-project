import 'package:flutter/material.dart';
import 'package:mini_project/constants/colors.dart';

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 123,
      width: 269,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: AppColors.amberShade1
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            child: Image.asset(
              'assets/images/banner1-image.png',
            )
          ),
          Container(
            margin: EdgeInsets.only(top: 16, left: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Get",
                  style: TextStyle(
                    fontSize: 26,
                    color: AppColors.blackShade001,
                    fontWeight: FontWeight.w300
                  ),
                ),
                Text("50% OFF",
                  style: TextStyle(
                    fontSize: 30,
                    color: AppColors.blackShade001,
                    fontWeight: FontWeight.w700
                  ),
                ),
                Text("On First 03 Orders",
                  style: TextStyle(
                    fontSize: 12,
                    color: AppColors.blackShade001,
                    fontWeight: FontWeight.w400
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class SavingsBanner extends StatelessWidget {
  final String text1;
  final String text2;
  final Color bannerColor;

  const SavingsBanner({super.key, required this.text1, required this.text2, required this.bannerColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 8, left: 8),
      height: 123,
      width: 158,
      decoration: BoxDecoration(
        color: bannerColor,
        borderRadius: BorderRadius.circular(16)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text1,
            style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 26
            ),
          ),
          Text(
            text2,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14
            ),  
          )
        ],
      ),
    );
  }
}