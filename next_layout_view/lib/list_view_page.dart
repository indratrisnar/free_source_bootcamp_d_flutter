import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    List colors = [
      Colors.blue,
      Colors.yellow,
      Colors.purple,
      Colors.green,
      Colors.red,
      Colors.orange,
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView'),
        centerTitle: true,
      ),
      // body: ListView(
      //   padding: const EdgeInsets.all(16),
      //   children: [
      //     Align(
      //       alignment: Alignment.centerRight,
      //       child: Container(height: 100, width: 150, color: Colors.purple),
      //     ),
      //     Container(height: 100, width: 150, color: Colors.yellow),
      //     Center(
      //       child: Container(height: 100, width: 150, color: Colors.blue),
      //     ),
      //     Container(height: 100, width: 150, color: Colors.orange),
      //     Container(height: 100, width: 150, color: Colors.green),
      //     Container(height: 100, width: 150, color: Colors.red),
      //     Container(
      //       margin: const EdgeInsets.only(top: 30),
      //       height: 200,
      //       color: Colors.blue[200],
      //       child: ListView(
      //         scrollDirection: Axis.horizontal,
      //         children: [
      //           Container(height: 100, width: 150, color: Colors.purple),
      //           Container(height: 100, width: 150, color: Colors.yellow),
      //           Container(height: 100, width: 150, color: Colors.blue),
      //           Container(height: 100, width: 150, color: Colors.orange),
      //           Container(height: 100, width: 150, color: Colors.green),
      //           Container(height: 100, width: 150, color: Colors.red),
      //         ],
      //       ),
      //     ),
      //   ],
      // ),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) {
          Color itemColor = colors[index];
          return Container(
            margin: const EdgeInsets.only(bottom: 16),
            color: itemColor,
            height: 200,
          );
        },
      ),
    );
  }
}
