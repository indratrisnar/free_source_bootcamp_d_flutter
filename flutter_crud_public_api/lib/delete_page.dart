import 'package:d_input/d_input.dart';
import 'package:d_method/d_method.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class DeletePage extends StatelessWidget {
  const DeletePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('DELETE'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          ElevatedButton(
            onPressed: () {
              int postId = 1;
              String url = 'https://jsonplaceholder.typicode.com/posts/$postId';
              http.delete(Uri.parse(url)).then((response) {
                DMethod.printResponse(response);
              });
            },
            child: const Text('Delete Post'),
          ),
        ],
      ),
    );
  }
}
