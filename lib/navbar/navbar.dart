import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mini_project/constants/colors.dart';
import 'package:mini_project/constants/icons.dart';

class BottomNavBar extends StatefulWidget {
  final void Function(int) onItemSelected;

  const BottomNavBar({super.key, required this.onItemSelected});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  void _onItemTapped (int index) {
    setState(() {
       _selectedIndex = index;
       widget.onItemSelected(index);
      // Navigator.push(context, MaterialPageRoute(builder: (context) => _widgetOptions[index]));
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(BottomNavIcons.home),
          label: 'Home'
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(BottomNavIcons.categories),
          label: 'Categories'
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(BottomNavIcons.favourites),
          label: 'Favourites',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(BottomNavIcons.more),
          label: 'More'
        ),
      ],
      selectedLabelStyle: TextStyle(
        color: AppColors.blackShade09
      ),
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
    );
  }
}