import 'package:d_input/d_input.dart';
import 'package:d_method/d_method.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PatchPage extends StatelessWidget {
  const PatchPage({super.key});

  updatePost(BuildContext ctx, int postId, String newTitle) async {
    try {
      String url = 'https://jsonplaceholder.typicode.com/pot/$postId';
      final response = await http.patch(
        Uri.parse(url),
        body: {
          'title': newTitle,
        },
      );
      DMethod.printResponse(response);
      if (response.statusCode == 200) {
        // ignore: use_build_context_synchronously
        ScaffoldMessenger.of(ctx).showSnackBar(
          const SnackBar(content: Text('Success Update')),
        );
      } else {
        // ignore: use_build_context_synchronously
        ScaffoldMessenger.of(ctx).showSnackBar(
          const SnackBar(content: Text('Failed Update')),
        );
      }
    } catch (e) {
      DMethod.printTitle('exception', e.toString());
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(ctx).showSnackBar(
        const SnackBar(content: Text('Failed Update')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final edtTitle = TextEditingController();
    // init
    edtTitle.text = 'foo';
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('PATCH'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          DInput(controller: edtTitle),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              updatePost(context, 1, edtTitle.text);
            },
            child: const Text('Update Post'),
          ),
        ],
      ),
    );
  }
}
