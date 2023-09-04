import 'package:flutter/material.dart';

class RowPage extends StatelessWidget {
  const RowPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title Page'),
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('Child 1'),
          const SizedBox(width: 10),
          Container(
            height: 80,
            width: 60,
            color: Colors.green,
          ),
          const SizedBox(width: 10),
          const Text('Child 5'),
        ],
      ),
    );
  }
}
