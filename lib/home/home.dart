import 'package:flutter/material.dart';
import 'package:mini_project/categories/categories_page.dart';
import 'package:mini_project/favourites/favourites_view.dart';
import 'package:mini_project/home/dashboard/dashboard_home.dart';
import 'package:mini_project/navbar/navbar.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  int _selectedIndex = 0;

  void _handleItemSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List _pages = [
    DashboardMain(controller: TextEditingController()),
    CategoriesView(),
    FavouritesView(favList: myFavourites)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavBar(onItemSelected: _handleItemSelected),
    );
  }
}