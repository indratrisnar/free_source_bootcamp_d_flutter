import 'package:flutter/material.dart';
import 'package:flutter_input/i2.dart';
import 'package:flutter_input/i3.dart';
import 'package:flutter_input/i4.dart';
import 'package:flutter_input/i5.dart';

import 'i1.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: I1(),
      // home: I2(),
      // home: I3(),
      // home: I4(),
      home: I5(),
    );
  }
}
