import 'package:flutter/material.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  bool isFavorite = false;

  clickFavorite() {
    isFavorite = !isFavorite; // flip
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    print('isFavorite: $isFavorite');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorite'),
        centerTitle: true,
      ),
      body: Center(
        child: IconButton(
          onPressed: () => clickFavorite(),
          icon: Icon(
            isFavorite ? Icons.favorite : Icons.favorite_border,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
