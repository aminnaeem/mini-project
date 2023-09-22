import 'package:flutter/material.dart';
import 'package:mini_project/constants/colors.dart';
import 'package:mini_project/products/products_list.dart';

class ProductTitleWithImage extends StatelessWidget {
  final Product product;
  const ProductTitleWithImage({
    super.key, required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Aristocratic Hand Bag",
            style: TextStyle(
              color: AppColors.blackShade001
            ),
          ),
          Text(
            "${product.title}",
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              color: AppColors.blackShade001,
              fontWeight: FontWeight.bold
            )
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(text: "Price\n"),
                    TextSpan(text: "Rs. ${product.price}",
                      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        color: AppColors.blackShade001,
                        fontWeight: FontWeight.bold
                      )
                    )
                  ]
                )
              ),
              SizedBox(
                width: 24,
              ),
              Expanded(
                child: Image.asset(product.image,
                  fit: BoxFit.fill,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}