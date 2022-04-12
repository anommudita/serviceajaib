import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: BelajarStackWidget(),
  ));
}

class BelajarStackWidget extends StatefulWidget {
  @override
  _BelajarStackWidget createState() => _BelajarStackWidget();
}

class _BelajarStackWidget extends State<BelajarStackWidget> {
  // var date = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.pink,
          centerTitle: true,
          toolbarOpacity: 1,
          brightness: Brightness.dark,
          leading: Icon(Icons.home),
          title: Text('BelajarFlutter.com'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {},
            ),
          ]),
    );
  }
}
