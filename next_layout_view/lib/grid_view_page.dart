import 'package:flutter/material.dart';

class GridViewPage extends StatelessWidget {
  const GridViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    List colors = [
      Colors.blue,
      Colors.yellow,
      Colors.purple,
      Colors.green,
      Colors.red,
      Colors.orange,
      Colors.cyan,
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView'),
        centerTitle: true,
      ),
      body: GridView(
        padding: const EdgeInsets.all(8),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 16,
          crossAxisSpacing: 8,
          childAspectRatio: 0.8,
        ),
        children: List.generate(colors.length, (index) {
          return Container(color: colors[index]);
        }),
      ),
      // body: GridView.builder(
      //   itemCount: colors.length,
      //   padding: const EdgeInsets.all(8),
      //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      //     crossAxisCount: 3,
      //     mainAxisSpacing: 16,
      //     crossAxisSpacing: 8,
      //     childAspectRatio: 0.8,
      //   ),
      //   itemBuilder: (context, index) {
      //     return Container(color: colors[index]);
      //   },
      // ),
    );
  }
}
