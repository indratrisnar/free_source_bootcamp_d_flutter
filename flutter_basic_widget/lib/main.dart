import 'package:flutter/material.dart';
import 'package:flutter_basic_widget/additional_widget_page.dart';
import 'package:flutter_basic_widget/button_page.dart';
import 'package:flutter_basic_widget/icon_page.dart';
import 'package:flutter_basic_widget/image_page.dart';
// import 'package:flutter_basic_widget/container_page.dart';
// import 'text_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: ContainerPage(),
      // home: TextPage(),
      // home: IconPage(),
      // home: ImagePage(),
      // home: ButtonPage(),
      home: AdditionalWidgetPage(),
    );
  }
}
