import 'package:flutter/material.dart';

class ColumnPage extends StatelessWidget {
  const ColumnPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title Page'),
      ),
      body: const SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text('Child ke-1 ajshajsh'),
            SizedBox(height: 20),
            Text('Child ke-3 sh'),
            SizedBox(height: 20),
            Text('Child ke-5 asudas dasiud'),
            SizedBox(height: 20),
            Text('Child ke-7 asiuausb'),
            Text('Child ke-8'),
          ],
        ),
      ),
    );
  }
}
