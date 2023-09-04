import 'package:d_input/d_input.dart';
import 'package:d_method/d_method.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PutPage extends StatelessWidget {
  const PutPage({super.key});

  updatePost(int postId, String newTitle, String newBody, int userId) {
    String url = 'https://jsonplaceholder.typicode.com/posts/$postId';
    http.put(
      Uri.parse(url),
      body: {
        'id': postId.toString(),
        'title': newTitle,
        'body': newBody,
        'userId': userId.toString(),
      },
    ).then((response) {
      DMethod.printResponse(response);
    });
  }

  @override
  Widget build(BuildContext context) {
    final edtTitle = TextEditingController();
    final edtBody = TextEditingController();
    // init
    edtTitle.text = 'foo';
    edtBody.text = 'bar';
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('PUT'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          DInput(controller: edtTitle),
          const SizedBox(height: 16),
          DInput(controller: edtBody),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              updatePost(1, edtTitle.text, edtBody.text, 1);
            },
            child: const Text('Update Post'),
          ),
        ],
      ),
    );
  }
}
