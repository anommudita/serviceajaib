import 'package:flutter/material.dart';

class FavoriteBotNav extends StatefulWidget {
  FavoriteBotNav({Key? key}) : super(key: key);
  @override
  State<FavoriteBotNav> createState() => _FavoriteBotNavState();
}

class _FavoriteBotNavState extends State<FavoriteBotNav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wishlist'),
      ),
      body: Center(
        child: new Text('Wishlist Screen', style: new TextStyle(fontSize: 40)),
      ),
    );
  }
}
