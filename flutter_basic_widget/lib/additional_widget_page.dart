import 'package:flutter/material.dart';

class AdditionalWidgetPage extends StatelessWidget {
  const AdditionalWidgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Center(
      //   child: Text('Center'),
      // ),
      // body: Align(
      //   alignment: Alignment.bottomRight,
      //   child: Text('Align - bottom right'),
      // ),
      // body: Material(
      //   child: Padding(
      //     padding: EdgeInsets.all(20),
      //     child: Text('Padding - all.20'),
      //   ),
      // ),
      body: SizedBox(
        width: 100,
        height: 100,
        child: Container(
          color: Colors.amber,
        ),
      ),
    );
  }
}
