import 'package:flutter/material.dart';

class WrapPage extends StatelessWidget {
  const WrapPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> animals = [
      'Spongebob',
      'Patrick',
      'Squidward',
      'Mr.Crab',
      'Krabby Patty',
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wrap'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Wrap(
          spacing: 8,
          runSpacing: 8,
          children: animals.map((e) {
            String firstCharacter = e.substring(0, 2);
            return Chip(
              avatar: CircleAvatar(
                child: Text(
                  firstCharacter,
                  style: const TextStyle(fontSize: 12, height: 1),
                ),
              ),
              label: Text(e),
            );
          }).toList(),
        ),
      ),
    );
  }
}
