import 'package:flutter/material.dart';

class UpdateStatePage extends StatefulWidget {
  const UpdateStatePage({super.key});

  @override
  State<UpdateStatePage> createState() => _UpdateStatePageState();
}

class _UpdateStatePageState extends State<UpdateStatePage> {
  String name = 'Flutter';

  @override
  Widget build(BuildContext context) {
    print('build()');
    print('name: $name');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Update State'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(
            name,
            style: Theme.of(context).textTheme.displaySmall,
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              name = 'D Lux';
              setState(() {});
            },
            child: const Text('Change'),
          ),
        ],
      ),
    );
  }
}
