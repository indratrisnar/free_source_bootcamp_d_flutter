import 'package:fd_log/fd_log.dart';
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
                FDLog().response(response);
              });
            },
            child: const Text('Delete Post'),
          ),
        ],
      ),
    );
  }
}
