import 'package:flutter/material.dart';
import 'package:flutter_theme/button_page.dart';
import 'package:flutter_theme/color_page.dart';
import 'package:flutter_theme/material_3_page.dart';
import 'package:flutter_theme/text_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        primaryColor: Colors.purple,
        scaffoldBackgroundColor: Colors.white,
        colorScheme: const ColorScheme.light(
          primary: Colors.purple,
          secondary: Colors.amber,
          tertiary: Colors.cyan,
        ),
        textTheme: const TextTheme(
          labelSmall: TextStyle(
            fontSize: 30,
            color: Colors.green,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: const MaterialStatePropertyAll(Colors.green),
            foregroundColor: const MaterialStatePropertyAll(Colors.white),
            minimumSize: const MaterialStatePropertyAll(
              Size.fromHeight(60),
            ),
            shape: MaterialStatePropertyAll(
              BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        primaryColor: Colors.purple,
        scaffoldBackgroundColor: Colors.black,
        colorScheme: const ColorScheme.dark(
          primary: Colors.purple,
          secondary: Colors.amber,
          tertiary: Colors.cyan,
        ),
        textTheme: const TextTheme(
          labelSmall: TextStyle(
            fontSize: 30,
            color: Colors.green,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: const MaterialStatePropertyAll(Colors.green),
            foregroundColor: const MaterialStatePropertyAll(Colors.white),
            minimumSize: const MaterialStatePropertyAll(
              Size.fromHeight(60),
            ),
            shape: MaterialStatePropertyAll(
              BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
      ),
      // home: const ColorPage(),
      // home: const TextPage(),
      // home: const ButtonPage(),
      home: const Material3Page(),
    );
  }
}
