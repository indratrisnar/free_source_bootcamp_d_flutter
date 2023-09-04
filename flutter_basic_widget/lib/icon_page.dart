import 'package:flutter/material.dart';

class IconPage extends StatelessWidget {
  const IconPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: const Icon(
          Icons.location_on,
          color: Colors.red,
          size: 80,
        ),
      ),
    );
  }
}
