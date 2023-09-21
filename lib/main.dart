import 'package:flutter/material.dart';
import 'package:mini_project/cart/cart_view.dart';
import 'package:mini_project/home/home.dart';
import 'package:mini_project/theme/main_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: MainTheme.customMainTheme(),
      home: HomePage(),
      routes: {
        CartView.routeName: (context) => CartView()
      },
      initialRoute: "/",
    );
  }
}

