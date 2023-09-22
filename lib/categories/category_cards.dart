import 'package:flutter/material.dart';
import 'package:mini_project/constants/colors.dart';
import 'package:mini_project/products/categories_list.dart';
import 'package:mini_project/products/products_list.dart';

class CategoryCards extends StatelessWidget {
  const CategoryCards({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        // childAspectRatio: 2/3,
        // crossAxisSpacing: 10,
        // mainAxisSpacing: 10
      ),
      itemCount: CategoriesList.length,
      itemBuilder: ((context, index) {
        final imagePath = categories[index].image;
        return Container(
          margin: EdgeInsets.all(14),
          height: 164,
          width: 154,
          alignment: Alignment.center,
          decoration: BoxDecoration(
          color: AppColors.blackShade01,
          borderRadius: BorderRadius.circular(12)),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 14, bottom: 10),
                child: Image.asset(imagePath,
                  height: 68,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                height: 2,
                width: 98,
                color: AppColors.blackShade02,
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Text(CategoriesList[index].keys.first,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600
                  ),
                ),
              ),
            ],
          ),
        );
      })
    );
  }
}