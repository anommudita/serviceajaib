import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:service_ajaib/auth/login.dart';
import 'package:service_ajaib/auth/splash_screen.dart';
import 'package:service_ajaib/bottom_navigator/bottomnav.dart';

void main() async {
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyAV3KeJXviF4MFBthRI-Z8-oob5f-U6WpQ", //"apiKey",
        appId: "1:627671459228:android:9f82646f6b9cbd539cd459", //"appId",
        messagingSenderId: "", //"messagingSenderId",
        projectId: "serviceajaib1"), //"projectId"),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'bottom nav',
      /*routes: {
        LoginPage.routeName : (context) => const LoginPage(),
        RegisterPage.routeName : (context) => const RegisterPage(),
        MyHomePage.routeName : (context) => const MyHomePage(title: 'home'),
      },*/
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: const MyHomePage(title: ' '),
      home: const SplashScreenPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: BottomNavApp(),
        ));
  }
}

class Lanjut extends StatelessWidget {
  const Lanjut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return const BottomNavApp();
            } else {
              return const LoginPage();
            }
          },
        ),
      );
}
