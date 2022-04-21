import 'dart:async';

import 'package:flutter/material.dart';

import 'login.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    openSplashScreen();
  }

  openSplashScreen() async {
    var durasiSplash = const Duration(seconds: 4);

    return Timer(durasiSplash, () {
      //pindah ke halaman login
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) {
        //return HomePage();
        return LoginPage();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset(
          "assets/images/logoSA.jpeg",
          width: 7000,
          height: 2000,
        ),
      ),
    );
  }
}
