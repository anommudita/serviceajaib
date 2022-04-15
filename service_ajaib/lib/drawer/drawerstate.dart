import 'package:flutter/material.dart';

class drawerState extends StatefulWidget {
  drawerState({Key? key}) : super(key: key);

  @override
  State<drawerState> createState() => _drawerStateState();
}

class _drawerStateState extends State<drawerState> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(children: <Widget>[
      new UserAccountsDrawerHeader(
          accountName: new Text('Ajaib'), accountEmail: new Text('aaa'))
    ]));
  }
}
