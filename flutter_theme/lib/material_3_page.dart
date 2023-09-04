import 'package:flutter/material.dart';

class Material3Page extends StatelessWidget {
  const Material3Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material 3'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          OutlinedButton(
            onPressed: () {},
            child: const Text('Click Me'),
          ),
          const SizedBox(height: 20),
          Switch(
            value: true,
            onChanged: (value) {},
          ),
        ],
      ),
    );
  }
}
