import 'package:flutter/material.dart';
import 'package:service_ajaib/bottom_navigator/bottomnav.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: new BottomNavApp());
  }
}
