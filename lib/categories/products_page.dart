import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mini_project/categories/item-details/item_detail_screen.dart';
import 'package:mini_project/categories/item_card.dart';
import 'package:mini_project/categories/product_details_page.dart';
import 'package:mini_project/constants/colors.dart';
import 'package:mini_project/constants/icons.dart';
import 'package:mini_project/products/category_wise.dart';
import 'package:mini_project/widgets/buttons.dart';
import 'package:mini_project/widgets/custom_topbar.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({super.key});

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackShade001,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTopBar(),
            SubCategories(),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: GridView.builder(
                  itemCount: 7,
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    childAspectRatio: 0.75,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20
                  ),
                  itemBuilder: (context, index) => ItemCard(
                    press: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ItemDetailsScreen())),
                  )
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}

