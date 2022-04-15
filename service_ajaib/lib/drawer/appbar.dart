import 'package:flutter/material.dart';
import 'drawerstate.dart';

class sideBar extends StatefulWidget {
  sideBar({Key? key}) : super(key: key);

  @override
  State<sideBar> createState() => _sideBarState();
}

class _sideBarState extends State<sideBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: new Text('anom')),
      endDrawer: drawerState(),
    );
  }
}
