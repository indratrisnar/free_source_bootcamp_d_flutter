import 'package:flutter/material.dart';

class MapListPage extends StatelessWidget {
  const MapListPage({super.key});

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
      appBar: AppBar(title: const Text('Map to List'), centerTitle: true),
      // body: Column(
      //   children: [
      //     const Text('------------------'),
      //     ...animals.map((e) => Text(e)).toList(),
      //     const Text('------------------'),
      //   ],
      // ),
      body: Column(
        children: animals.map((e) {
          return Text(e);
        }).toList(),
      ),
    );
  }
}
