import 'package:flutter/material.dart';

class HomeBotNav extends StatefulWidget {
  HomeBotNav({Key? key}) : super(key: key);

  @override
  State<HomeBotNav> createState() => _HomeBotNavState();
}

class _HomeBotNavState extends State<HomeBotNav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: new Text('Screen Home', style: new TextStyle(fontSize: 40)),
      ),
    );
  }
}
