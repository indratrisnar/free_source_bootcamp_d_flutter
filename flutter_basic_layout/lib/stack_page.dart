import 'package:flutter/material.dart';

class StackPage extends StatelessWidget {
  const StackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title Page'),
      ),
      body: SizedBox(
        width: double.infinity, //max width yang tersedia
        height: double.infinity, //max height yang tersedia
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            Container(
              height: 180,
              width: 160,
              color: Colors.green,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.yellow,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                height: 80,
                width: 60,
                color: Colors.purple,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
