import 'package:flutter/material.dart';

class TeknisiBotNav extends StatefulWidget {
  TeknisiBotNav({Key? key}) : super(key: key);

  @override
  State<TeknisiBotNav> createState() => _TeknisiBotNavState();
}

class _TeknisiBotNavState extends State<TeknisiBotNav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Teknisi Test'),
      ),
      body: Center(
        child: new Text('Teknisi Screen', style: new TextStyle(fontSize: 40)),
      ),
    );
  }
}
