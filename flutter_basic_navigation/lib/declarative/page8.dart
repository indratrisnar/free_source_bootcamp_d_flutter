import 'package:flutter/material.dart';

class Page8 extends StatelessWidget {
  const Page8({super.key});

  @override
  Widget build(BuildContext context) {
    print('Page 8');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 8'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context, 'Yohohoho');
            },
            child: const Text('Back & Return Data'),
          ),
        ],
      ),
    );
  }
}
