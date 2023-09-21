import 'package:flutter/material.dart';
import 'package:mini_project/constants/colors.dart';
import 'package:mini_project/home/banners_design.dart';

class DiscoutnBannerSlider extends StatefulWidget {
  const DiscoutnBannerSlider({super.key});

  @override
  State<DiscoutnBannerSlider> createState() => _DiscoutnBannerSliderState();
}

class _DiscoutnBannerSliderState extends State<DiscoutnBannerSlider> {
  late final PageController pageController;

  @override
  void initState() {
    pageController = PageController(
      initialPage: 0,
      viewportFraction: 0.85
    );
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16),
      padding: EdgeInsets.only(top: 12, bottom: 12),
      color: AppColors.blackShade001,
      child: Column(
        children: [
          SizedBox(
            height: 150,
            child: PageView.builder(
              controller: pageController,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return AnimatedBuilder(
                  animation: pageController,
                  builder: (context, child) {
                    return child!;
                  },
                  child: Container(
                    margin: EdgeInsets.all(15),
                    child: DiscountBanner(),
                  )
                );
              },
              itemCount: 3,
            ),
          ),
        ],
      ),
    );
  }
}