import 'package:flutter/material.dart';

class GeneratePage extends StatelessWidget {
  const GeneratePage({super.key});

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
      appBar: AppBar(title: const Text('Generate'), centerTitle: true),
      // body: Column(
      //   children: [
      //     const Text('------------------'),
      //     ...List.generate(animals.length, (index) {
      //       return Text(animals[index]);
      //     }),
      //     const Text('------------------'),
      //   ],
      // ),
      body: Column(
        children: List.generate(animals.length, (index) {
          return Text(
            '${index + 1}. ${animals[index]}',
          );
        }),
      ),
    );
  }
}
