import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    bool isChecked = true;
    bool isPicked = false;
    bool isLoading = false;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            const Text('1'),
            if (isChecked) const Text('Accepted Aggrement'),
            const Divider(),
            const Text('2'),
            if (isChecked)
              const Column(
                children: [
                  Text('Accepted Aggrement'),
                  Text('Accepted Regulation'),
                ],
              ),
            const Divider(),
            const Text('3'),
            isPicked
                ? const Text('You have picked image')
                : const Icon(Icons.add_a_photo),
            const Divider(),
            const Text('4'),
            Text(isPicked ? 'You have picked image' : 'Please pick image'),
            const Divider(),
            const Text('5'),
            isLoading ? CircularProgressIndicator() : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
