import 'package:flutter/material.dart';
import 'package:mini_project/constants/colors.dart';
import 'package:mini_project/products/products_list.dart';
import 'package:mini_project/widgets/buttons.dart';

class CardsHorizontalView extends StatelessWidget {
  final int ind;

  const CardsHorizontalView({super.key, required this.ind});

  @override
  Widget build(BuildContext context) {

    final categoryData = CategoriesList[ind];

    final categoryName = categoryData.keys.first;
    final productImage = categoryData[categoryName]![0]['Fruits'][0]['Image'];
    final productName = categoryData[categoryName]![0]['Fruits'][0]['Name'];
    final productPrice = categoryData[categoryName]![0]['Fruits'][0]['Price'];

    return Container(
      margin: EdgeInsets.only(right: 20, top: 14, bottom: 14),
      width: 128,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.blackShade01
      ),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 4),
            height: 68,
            child: Image.asset(productImage),
          ),
          Container(
            margin: EdgeInsets.only(top: 8,bottom: 8),
            color: AppColors.blackShade02,
            height: 2,
            width: 80,
          ),
          Text(productName, textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
              color: AppColors.blackShade02,
              borderRadius: BorderRadius.circular(12)
            ),
            height: 24,
            width: 112,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(" Unit",
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w400
                  ),
                ),
                Text("Rs. $productPrice",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600
                  ),
                ),
                AddToCartPlusButton()
              ],
            ),
          ),
        ],
      ),
    );
  }
}