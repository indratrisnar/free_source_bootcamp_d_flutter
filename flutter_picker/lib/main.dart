import 'package:flutter/material.dart';
import 'package:flutter_picker/date_picker_page.dart';
import 'package:flutter_picker/file_picker_page.dart';
import 'package:flutter_picker/image_picker_page.dart';
import 'package:flutter_picker/range_picker_page.dart';
import 'package:flutter_picker/time_picker_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: DatePickerPage(),
      // home: RangePickerPage(),
      // home: TimePickerPage(),
      // home: ImagePickerPage(),
      home: FilePickerPage(),
    );
  }
}
