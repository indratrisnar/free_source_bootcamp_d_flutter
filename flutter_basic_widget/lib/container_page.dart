import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  const ContainerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // color: Colors.amber,
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(16),
        ),
        width: 200,
        height: 100,
        margin: const EdgeInsets.only(
          left: 20,
          top: 40,
        ),
        padding: const EdgeInsets.all(20),
        child: const Text('Container'),
      ),
    );
  }
}
