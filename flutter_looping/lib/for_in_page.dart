import 'package:flutter/material.dart';

class ForInPage extends StatelessWidget {
  const ForInPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> animals = [
      'Cochroaces',
      'Simba',
      'Pikachu',
      'Salmon',
      'Turbo'
    ];
    return Scaffold(
      appBar: AppBar(title: const Text('For In'), centerTitle: true),
      body: Column(
        children: [
          const Text('------------------'),
          for (String animal in animals) Text(animal),
          const Text('------------------'),
        ],
      ),
    );
  }
}
