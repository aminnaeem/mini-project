import 'package:flutter/material.dart';
import 'package:mini_project/categories/category_cards.dart';
import 'package:mini_project/categories/products_page.dart';
import 'package:mini_project/constants/colors.dart';
import 'package:mini_project/home/dashboard/dashboard_styling.dart';
import 'package:mini_project/widgets/buttons.dart';

class CategoriesView extends StatefulWidget {

  const CategoriesView({super.key});

  @override
  State<CategoriesView> createState() => _CategoriesViewState();
}

class _CategoriesViewState extends State<CategoriesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                Row(
                  children: [
                    SearchButton(),
                    CartButton()
                  ]
                )    
              ],
            ),
            // Container(
            //   margin: EdgeInsets.only(bottom: 30, top: 30),
            //   width: MediaQuery.of(context).size.width*0.9,
            //   child: SearchBar(
            //     controller: controller,
            //     backgroundColor: MaterialStateProperty.all(AppColors.blueShade2),
            //     leading: Image.asset('assets/icons/Search Icon.png'),
            //     hintText: "Search Product or Store",
            //     textStyle: MaterialStateProperty.all(TextStyling.searchBar),
            //   ),
            // ),
            Container(
              margin: EdgeInsets.only(top: 30, bottom: 30, left: MediaQuery.of(context).size.width*0.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Shop",
                    style: TextStyle(
                      color: AppColors.blackShade001,
                      fontSize: 50,
                      fontWeight: FontWeight.w300
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("By Category",
                    style: TextStyle(
                      color: AppColors.blackShade001,
                      fontSize: 50,
                      fontWeight: FontWeight.w800
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: AppColors.blackShade001,
                child: InkWell(
                  child: CategoryCards(),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const ProductsPage()));
                  },
                )
              )
            )
          ],
        )
      ),
    );
  }
}