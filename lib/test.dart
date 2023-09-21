import 'package:flutter/material.dart';
import 'package:mini_project/home/banners_design.dart';

List itemsList = [
  {"Name" : "Lemon", "Price" : 20},
  {"Name" : "Tomato", "Price" : 30},
  {"Name" : "Potato", "Price" : 40},
  {"Name" : "Onion", "Price" : 50}
];

class FavouriteCheck extends StatefulWidget {
  const FavouriteCheck({super.key});
  
  @override
  State<FavouriteCheck> createState() => _FavouriteCheckState();
}

class _FavouriteCheckState extends State<FavouriteCheck> {
  int _currentPage = 0;
  final ValueNotifier currentIndexNotifier = ValueNotifier(0);

  PageController _pageController = PageController(
    initialPage: 0
  );

  @override
  void initState() {
    _pageController = PageController(
      initialPage: 0,
      viewportFraction: 0.75
    );
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:
        Column(
          children: [
            
          ],
        )
      // ListView.builder(
      //   itemBuilder: (context, index) {
      //     return Container(
      //       margin: EdgeInsets.only(bottom: 2),
      //       child: ListTile(
      //         tileColor: Colors.grey,
      //         title: Text(itemsList[index]["Name"]),
      //         subtitle: Text(itemsList[index]["Price"].toString()),
      //       ),
      //     );
      //   },
      //   itemCount: itemsList.length,
      // )
    );
  }
}