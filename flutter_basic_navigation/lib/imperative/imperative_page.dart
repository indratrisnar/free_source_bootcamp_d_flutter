import 'package:flutter/material.dart';

import 'page1.dart';
import 'page2.dart';
import 'page3.dart';
import 'page4.dart';

class ImperativePage extends StatelessWidget {
  const ImperativePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Imperative'),
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
                  builder: (context) => const Page1(),
                ),
              );
            },
            child: const Text('Push Page 1'),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const Page2(),
                ),
              );
            },
            child: const Text('Replace Page 2'),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Page3(name: 'Flutter D Lux'),
                ),
              );
            },
            child: const Text('Push Page 3 With Data'),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Page4(),
                ),
              ).then((value) {
                print('Data from Page 4: $value');
              });
            },
            child: const Text('Get Data from Page 4'),
          ),
        ],
      ),
    );
  }
}
