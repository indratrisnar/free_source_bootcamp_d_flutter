import 'package:flutter/material.dart';

class ForPage extends StatelessWidget {
  const ForPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('For'), centerTitle: true),
      body: Column(
        children: [
          const Text('------------------'),
          for (int index = 1; index < 5; index++)
            Text('Ini ada pada Index $index'),
          const Text('------------------'),
        ],
      ),
    );
  }
}
