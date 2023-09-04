import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key, required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    // if StetFullWidget access by `widget', example: `widget.name`
    String nameText = name;
    print('Page 3');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 3'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Name: $nameText'),
      ),
    );
  }
}
