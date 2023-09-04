import 'package:flutter/material.dart';

class I1 extends StatelessWidget {
  const I1({super.key});

  @override
  Widget build(BuildContext context) {
    final edtInput = TextEditingController();
    final edtInput2 = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Field'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          TextField(
            controller: edtInput,
            decoration: const InputDecoration(
              labelText: 'this is label',
              hintText: 'this is hint',
            ),
          ),
          const SizedBox(height: 16),
          TextField(
            controller: edtInput2,
            decoration: const InputDecoration(
              labelText: 'this is label',
              hintText: 'this is hint',
            ),
          ),
          const SizedBox(height: 16),
          TextField(
            controller: TextEditingController(),
            decoration: const InputDecoration(
              labelText: 'this is label',
              hintText: 'this is hint',
            ),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              print(edtInput.text);
            },
            child: const Text('Get Value from input 1'),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              edtInput2.text = 'here is new data';
            },
            child: const Text('Set Value to input 2'),
          ),
        ],
      ),
    );
  }
}
