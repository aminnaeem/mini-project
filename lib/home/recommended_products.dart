import 'package:flutter/material.dart';
import 'package:mini_project/constants/colors.dart';
import 'package:mini_project/home/card_horizontal_view.dart';

class RecommendedProducts extends StatelessWidget {
  const RecommendedProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 250,
        color: AppColors.blackShade001,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Text("Recommended",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w400
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10),
              height: 194,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 6,
                itemBuilder: (context, index){
                  return CardsHorizontalView(ind: index,);
                }
              ),
            ),
          ],
        ),
      ),
    );
  }
}