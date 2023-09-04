import 'package:flutter/material.dart';

class Page4 extends StatelessWidget {
  const Page4({super.key});

  @override
  Widget build(BuildContext context) {
    print('Page 4');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 4'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context, 'Zehahaha');
            },
            child: const Text('Back & Return Data'),
          ),
        ],
      ),
    );
  }
}
