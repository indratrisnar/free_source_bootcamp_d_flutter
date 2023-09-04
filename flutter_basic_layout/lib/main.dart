import 'package:flutter/material.dart';
import 'package:flutter_basic_layout/column_page.dart';
import 'package:flutter_basic_layout/row_page.dart';
import 'package:flutter_basic_layout/stack_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: ColumnPage(),
      // home: RowPage(),
      home: StackPage(),
    );
  }
}
