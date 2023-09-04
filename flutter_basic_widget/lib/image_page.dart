import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  const ImagePage({super.key});

  @override
  Widget build(BuildContext context) {
    String imageURL =
        'https://images.pexels.com/photos/931018/pexels-photo-931018.jpeg?auto=compress&cs=tinysrgb&w=1600';
    String imageAsset = 'assets/images/pexels-roman-odintsov-4871012.jpg';
    return Scaffold(
      body: Center(
        child: Image.asset(
          imageAsset,
          width: 150,
          height: 180,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
