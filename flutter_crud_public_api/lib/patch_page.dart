import 'package:d_input/d_input.dart';
import 'package:fd_log/fd_log.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PatchPage extends StatefulWidget {
  const PatchPage({super.key});

  @override
  State<PatchPage> createState() => _PatchPageState();
}

class _PatchPageState extends State<PatchPage> {
  updatePost(int postId, String newTitle) async {
    try {
      String url = 'https://jsonplaceholder.typicode.com/posts/$postId';
      final response = await http.patch(
        Uri.parse(url),
        body: {
          'title': newTitle,
        },
      );
      FDLog(useDebug: true).response(response);
      if (response.statusCode == 200) {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Success Update')),
          );
        }
      } else {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Failed Update')),
          );
        }
      }
    } catch (e) {
      FDLog(useDebug: true).title('exception', e.toString());
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Failed Update')),
        );
      }
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
              updatePost(1, edtTitle.text);
            },
            child: const Text('Update Post'),
          ),
        ],
      ),
    );
  }
}
