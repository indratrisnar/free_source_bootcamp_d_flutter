import 'package:flutter/material.dart';

import 'declarative/declarative_page.dart';
import 'imperative/imperative_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ImperativePage(),
                ),
              );
            },
            child: const Text('Imperative'),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DeclarativePage(),
                ),
              );
            },
            child: const Text('Declarative'),
          ),
        ],
      ),
    );
  }
}
