import 'package:flutter/material.dart';
import 'package:mini_project/constants/colors.dart';

List myFavourites = [

];

class FavouritesView extends StatefulWidget {
  final List favList;
  
  const FavouritesView({super.key, required this.favList});

  @override
  State<FavouritesView> createState() => _FavouritesViewState();
}

class _FavouritesViewState extends State<FavouritesView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: 60,
            width: MediaQuery.of(context).size.width*1,
            child: Text(
              "My Favourites",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: AppColors.blackShade001
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width*1,
              color: AppColors.blackShade001,
              child: ListView.builder(
                itemCount: myFavourites.length,
                itemBuilder: (context, index){
                  final favItem = myFavourites[index];
                  final favItemImage = favItem["Image"];
                  return Container(
                    height: 80,
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 26,
                          backgroundImage: AssetImage(favItemImage),
                        )
                      ],
                    ),
                  );
                })
            ),
          )
        ],
      ),
    );
  }
}