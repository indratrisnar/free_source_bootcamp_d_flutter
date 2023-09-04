import 'package:flutter/material.dart';

class PageViewPage extends StatelessWidget {
  const PageViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    List travels = [
      'https://images.pexels.com/photos/1271619/pexels-photo-1271619.jpeg?auto=compress&cs=tinysrgb&w=1600',
      'https://images.pexels.com/photos/2166559/pexels-photo-2166559.jpeg?auto=compress&cs=tinysrgb&w=1600',
      'https://images.pexels.com/photos/16762297/pexels-photo-16762297/free-photo-of-aerial-photo-of-the-coastline-in-the-city.jpeg?auto=compress&cs=tinysrgb&w=1600',
      'https://images.pexels.com/photos/1659438/pexels-photo-1659438.jpeg?auto=compress&cs=tinysrgb&w=1600',
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('PageView'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(height: 16),
          AspectRatio(
            aspectRatio: 16 / 9,
            child: PageView.builder(
              controller: PageController(viewportFraction: 0.7),
              itemCount: travels.length,
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                  ),
                  child: Image.network(
                    travels[index],
                    fit: BoxFit.cover,
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
