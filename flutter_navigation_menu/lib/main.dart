import 'package:flutter/material.dart';
import 'package:flutter_navigation_menu/bottom_navigation_page.dart';
import 'package:flutter_navigation_menu/drawer_page.dart';
import 'package:flutter_navigation_menu/tabbar_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: DarwerPage(),
      // home: TabBarPage(),
      home: BottomNavigationPage(),
    );
  }
}
