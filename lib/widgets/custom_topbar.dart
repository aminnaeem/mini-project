import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mini_project/constants/colors.dart';
import 'package:mini_project/constants/icons.dart';
import 'package:mini_project/products/products_list.dart';
import 'package:mini_project/widgets/buttons.dart';

class CustomTopBar extends StatelessWidget {
  const CustomTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 24, top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            backgroundColor: AppColors.blackShade01,
            child: IconButton(
              icon: SvgPicture.asset(ExtraIcons.back),
              onPressed: (){
                Navigator.pop(context);
              },
            ),
          ),
          Container(
            child: Text(
              "${CategoriesList[0].keys.first}",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400
              ),
            ),
          ),
          Row(
            children: [
              SearchButton(),
              CartButton()
            ],
          ),
        ],
      ),
    );
  }
}