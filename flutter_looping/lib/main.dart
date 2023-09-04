import 'package:flutter/material.dart';
import 'package:flutter_looping/for_in_page.dart';
import 'package:flutter_looping/for_page.dart';
import 'package:flutter_looping/generate_page.dart';
import 'package:flutter_looping/map_list_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: ForPage(),
      // home: ForInPage(),
      // home: GeneratePage(),
      home: MapListPage(),
    );
  }
}
