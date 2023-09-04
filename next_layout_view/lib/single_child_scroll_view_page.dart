import 'package:flutter/material.dart';

class SingleChildScrollViewPage extends StatelessWidget {
  const SingleChildScrollViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    String imageURL =
        'https://images.pexels.com/photos/14488109/pexels-photo-14488109.jpeg?auto=compress&cs=tinysrgb&w=1600&lazy=load';
    return Scaffold(
      appBar: AppBar(
        title: const Text('SingleChildScrollView'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        // child: Column(
        //   children: [
        //     Container(height: 200, width: 250, color: Colors.purple),
        //     Container(height: 200, width: 250, color: Colors.yellow),
        //     Container(height: 200, width: 250, color: Colors.blue),
        //     Container(height: 200, width: 250, color: Colors.orange),
        //     Container(height: 200, width: 250, color: Colors.green),
        //     Container(height: 200, width: 250, color: Colors.red),
        //   ],
        // ),
        // scrollDirection: Axis.horizontal,
        // child: Row(
        //   children: [
        //     Container(height: 100, width: 150, color: Colors.purple),
        //     Container(height: 100, width: 150, color: Colors.yellow),
        //     Container(height: 100, width: 150, color: Colors.blue),
        //     Container(height: 100, width: 150, color: Colors.orange),
        //     Container(height: 100, width: 150, color: Colors.green),
        //     Container(height: 100, width: 150, color: Colors.red),
        //   ],
        // ),
        scrollDirection: Axis.horizontal,
        child: Image.network(
          imageURL,
          width: 500,
          height: 300,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
