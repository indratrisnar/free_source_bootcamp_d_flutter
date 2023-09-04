import 'package:d_input/d_input.dart';
import 'package:d_method/d_method.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PostPage extends StatelessWidget {
  const PostPage({super.key});

  createPost(String title, String body, int userId) async {
    String url = 'https://jsonplaceholder.typicode.com/posts';
    try {
      final response = await http.post(
        Uri.parse(url),
        body: {
          'title': title,
          'body': body,
          'userId': userId, // userId.toString()
        },
      );
      DMethod.printResponse(response);
    } catch (e) {
      DMethod.printTitle('createPost-error', e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    final edtTitle = TextEditingController();
    final edtBody = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('POST'),
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
              createPost(edtTitle.text, edtBody.text, 1);
            },
            child: const Text('Add Post'),
          ),
        ],
      ),
    );
  }
}
