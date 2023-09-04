import 'package:flutter/material.dart';
import 'package:next_layout_view/grid_view_page.dart';
import 'package:next_layout_view/list_view_page.dart';
import 'package:next_layout_view/page_view_page.dart';
import 'package:next_layout_view/single_child_scroll_view_page.dart';
import 'package:next_layout_view/wrap_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: SingleChildScrollViewPage(),
      // home: ListViewPage(),
      // home: GridViewPage(),
      // home: WrapPage(),
      home: PageViewPage(),
    );
  }
}
