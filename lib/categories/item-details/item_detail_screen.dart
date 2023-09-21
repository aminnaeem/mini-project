import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mini_project/constants/colors.dart';
import 'package:mini_project/widgets/add_to_cart_btn.dart';
import 'package:mini_project/widgets/buy_now_btn.dart';
import 'package:mini_project/widgets/cart_counter.dart';
import 'package:mini_project/widgets/counter_with_favbtn.dart';
import 'package:mini_project/widgets/custom_topbar.dart';
import 'package:mini_project/widgets/product_description.dart';
import 'package:mini_project/widgets/product_rating.dart';
import 'package:mini_project/widgets/product_title_img.dart';

class ItemDetailsScreen extends StatelessWidget {
  final product;

  const ItemDetailsScreen({super.key, this.product});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
          CustomTopBar(),
          SizedBox(height: 2),
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: size.height*0.865,
                  child: Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: size.height*0.3),
                        padding: EdgeInsets.only(top: size.height*0.12, left: 20, right: 20),
                        decoration: BoxDecoration(
                          color: AppColors.blackShade001,
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(24),topRight: Radius.circular(24))
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ProductRating(),
                            SizedBox(height: 10),
                            ProductDescription(),
                            SizedBox(height: 10),
                            CountWithFavBtn(),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                AddtoCartBtn(),
                                BuyNowBtn()
                              ],
                            )
                          ],
                        ),
                      ),
                      ProductTitleWithImage()
                    ],
                  ),
                )
              ],
            ),
          )
        ],
       ),
     ),
    );
  }
}


