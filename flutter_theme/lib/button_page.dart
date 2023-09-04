import 'package:flutter/material.dart';

class ButtonPage extends StatelessWidget {
  const ButtonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Button'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          ElevatedButton(
            onPressed: () {},
            child: const Text('Click Me'),
          ),
          const SizedBox(height: 30),
          // without custom theme / follow default
          OutlinedButton(
            onPressed: () {},
            child: const Text('Click Me'),
          ),
        ],
      ),
    );
  }
}
