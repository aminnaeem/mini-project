import 'package:flutter/material.dart';
import 'package:mini_project/constants/colors.dart';
import 'package:mini_project/home/banners_design.dart';
import 'package:mini_project/home/dashboard/dashboard_styling.dart';
import 'package:mini_project/home/discount_banners_slider.dart';
import 'package:mini_project/home/recommended_products.dart';
import 'package:mini_project/widgets/buttons.dart';
import 'package:mini_project/widgets/dropdown_menu.dart';

class DashboardMain extends StatelessWidget {
  final TextEditingController controller;

  DashboardMain({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.05),
                      child: Text("Hey, Amin",
                        style: TextStyling.userFocus,
                      ),
                    ),
                    CartButton()
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 30, top: 30),
                  width: MediaQuery.of(context).size.width*0.9,
                  child: SearchBar(
                    controller: controller,
                    backgroundColor: MaterialStateProperty.all(AppColors.blueShade2),
                    leading: Image.asset('assets/icons/Search Icon.png'),
                    hintText: "Search Product or Store",
                    textStyle: MaterialStateProperty.all(TextStyling.searchBar),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.05),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("DELIVERED TO",
                            style: TextStyling.addressTimelineHead,
                          ),
                          DDMenu(dropDownList: addressList)
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: MediaQuery.of(context).size.width*0.05),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("WITHIN",
                            style: TextStyling.addressTimelineHead,
                          ),
                          Container(child: DDMenu(dropDownList: deliveryTime,))
                        ],
                      ),
                    )
                  ],
                ),
              ]
            ),
            DiscoutnBannerSlider(),
            RecommendedProducts(),
            Container(
              height: 150,
              width: MediaQuery.of(context).size.width*1,
              color: AppColors.blackShade001,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SavingsBanner(text1: 'Rs. 3420', text2: 'Your Total Savings', bannerColor: AppColors.amberShade2,),
                  SavingsBanner(text1: '108 HRS', text2: 'Your Time Saved', bannerColor: AppColors.amberShade3,),
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}


 