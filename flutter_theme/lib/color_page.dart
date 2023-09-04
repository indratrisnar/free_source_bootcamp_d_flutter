import 'package:flutter/material.dart';

class ColorPage extends StatelessWidget {
  const ColorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Color'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Center(
            child: Container(
              height: 100,
              width: 100,
              color: Theme.of(context).primaryColor,
            ),
          ),
          Center(
            child: Container(
              height: 100,
              width: 100,
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          Center(
            child: Container(
              height: 100,
              width: 100,
              color: Theme.of(context).colorScheme.onBackground,
            ),
          ),
          Center(
            child: Container(
              height: 100,
              width: 100,
              color: Theme.of(context).colorScheme.tertiary,
            ),
          ),
        ],
      ),
    );
  }
}
