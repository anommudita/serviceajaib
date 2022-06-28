import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:service_ajaib/auth/splash_screen.dart';
import 'package:service_ajaib/bottom_navigator/bottomnav.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home',
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
