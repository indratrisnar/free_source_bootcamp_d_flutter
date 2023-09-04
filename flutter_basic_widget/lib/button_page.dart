import 'package:flutter/material.dart';

class ButtonPage extends StatelessWidget {
  const ButtonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          child: const Text('Publish'),
        ),
        // child: OutlinedButton(
        //   onPressed: () {},
        //   child: const Text('Publish'),
        // ),
        // child: TextButton(
        //   onPressed: () {},
        //   child: const Text('Publish'),
        // ),
      ),
    );
  }
}
