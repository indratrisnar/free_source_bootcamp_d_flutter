import 'package:flutter/material.dart';

class Page7 extends StatelessWidget {
  const Page7({super.key});

  @override
  Widget build(BuildContext context) {
    print('Page 7');
    // as String because data was send is 'Flutter D Lux'
    String name = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 7'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Name: $name'),
      ),
    );
  }
}
