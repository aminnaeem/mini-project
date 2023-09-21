import 'package:flutter/material.dart';
import 'package:mini_project/constants/colors.dart';

class SubCategories extends StatefulWidget {
  const SubCategories({super.key});

  @override
  State<SubCategories> createState() => _SubCategoriesState();
}

class _SubCategoriesState extends State<SubCategories> {
  List subCategories = ["Fruits", "Vegies", "Oil", "Ghee", "Atta"];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: SizedBox(
        height: 36,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: subCategories.length,
          itemBuilder: (context, index) => builtCategories(index)
        ),
      ),
    );
  }


  Widget builtCategories(int index) {
    return GestureDetector(
      onTap: (){
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        margin: EdgeInsets.only(right: 8),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: selectedIndex == index ? AppColors.amberShade2 : AppColors.blackShade045
          ),
          borderRadius: BorderRadius.circular(20),
          color: selectedIndex == index ? AppColors.amberShade2 : AppColors.blackShade001 
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            subCategories[index],
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: selectedIndex == index ? AppColors.blackShade001 : AppColors.blackShade09,
            ),
          ),
        ),
      ),
    );
  }
}