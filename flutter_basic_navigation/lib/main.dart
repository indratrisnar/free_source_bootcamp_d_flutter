import 'package:flutter/material.dart';

import 'declarative/page5.dart';
import 'declarative/page6.dart';
import 'declarative/page7.dart';
import 'declarative/page8.dart';
import 'home_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(), //use this for imperative
      // initialRoute: '/', // use this for declarative
      routes: {
        // '/': (context) => const HomePage(),
        '/page5': (context) => const Page5(),
        '/page6': (context) => const Page6(),
        '/page7': (context) => const Page7(),
        '/page8': (context) => const Page8(),
      },
    );
  }
}
