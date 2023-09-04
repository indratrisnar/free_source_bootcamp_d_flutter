import 'package:flutter/material.dart';
import 'package:flutter_crud_public_api/delete_page.dart';
import 'package:flutter_crud_public_api/get_page.dart';
import 'package:flutter_crud_public_api/patch_page.dart';
import 'package:flutter_crud_public_api/post_page.dart';
import 'package:flutter_crud_public_api/put_page.dart';

moveTo(BuildContext context, Widget page) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => page));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          ElevatedButton(
            onPressed: () => moveTo(context, const GetPage()),
            child: const Text('GET'),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () => moveTo(context, const PostPage()),
            child: const Text('POST'),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () => moveTo(context, const PutPage()),
            child: const Text('PUT'),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () => moveTo(context, const PatchPage()),
            child: const Text('PATCH'),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () => moveTo(context, const DeletePage()),
            child: const Text('DELETE'),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
