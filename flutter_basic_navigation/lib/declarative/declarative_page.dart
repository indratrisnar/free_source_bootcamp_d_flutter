import 'package:flutter/material.dart';

class DeclarativePage extends StatelessWidget {
  const DeclarativePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Declarative'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/page5');
            },
            child: const Text('Push Page 5'),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/page6');
            },
            child: const Text('Replace Page 6'),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(
                context,
                '/page7',
                arguments: 'Flutter D Lux',
              );
            },
            child: const Text('Push Page 7 With Data'),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/page8').then((value) {
                print('Data from Page 8: $value');
              });
            },
            child: const Text('Get Data from Page 8'),
          ),
        ],
      ),
    );
  }
}
