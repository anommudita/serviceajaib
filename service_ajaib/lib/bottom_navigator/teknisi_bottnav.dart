import 'package:flutter/material.dart';
import 'package:service_ajaib/drawer/appbar.dart';
import 'package:service_ajaib/drawer/drawerstate.dart';

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
        elevation: 0,
        title: Text(
          'SERVICE AJAIB',
          style: TextStyle(
              color: Color.fromARGB(255, 209, 209, 209),
              fontSize: 14,
              fontFamily: 'Roboto'),
        ),
        centerTitle: true,
        leading: MaterialButton(
          child: Icon(
            Icons.arrow_back,
            color: Color.fromARGB(255, 113, 113, 113),
          ),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
        ),
      ),
      endDrawer: drawerState(),
      body: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(top: 20, bottom: 2),
            child: new Text('Teknisi'),
          ),
          Container(
            alignment: Alignment.center,
            child: new Text('Teknisi Terpopuler'),
          )
        ],
      ),
    );
  }
}
