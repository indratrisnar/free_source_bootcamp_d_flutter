import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  save() {
    print('save');
  }

  whenClicked() {
    print('whenClicked');
  }

  void sum() {
    print('sum: 2');
  }

  int substraction(int n1, int n2) => n1 - n2;

  addProfile({
    required String name,
    required int age,
    String? imageURL,
  }) {
    print('Name: $name');
    print('Age: $age');
    if (imageURL != null) {
      print('imageURL: $imageURL');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Function'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          ElevatedButton(
            onPressed: () {
              save();
            },
            child: const Text('Save'),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () => whenClicked(),
            child: const Text('When Cliked'),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: sum,
            child: const Text('Sum'),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              int result = substraction(5, 3);
              print('Substraction: $result');
            },
            child: const Text('Substraction'),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () => addProfile(name: 'Indre', age: 20),
            child: const Text('Add profile 1'),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () => addProfile(age: 7, name: 'Flutter'),
            child: const Text('Add profile 2'),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              print('---------------');
              addProfile(age: 7, imageURL: 'fdl.png', name: ' F D Lux');
            },
            child: const Text('Add profile 3'),
          ),
        ],
      ),
    );
  }
}
