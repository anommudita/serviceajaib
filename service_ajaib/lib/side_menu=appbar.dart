// import 'package:flutter/material.dart';

// //Page About
// import 'drawerstate.dart';

// //teknik ternary
// void main() => runApp(new MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//       home: new MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => new _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     // scaffold = halaman full screen
//     // drawwer = tampilan side menu seperti profil
//     return new Scaffold(
//         appBar: new AppBar(
//           title: new Text("Side Menu"),
//         ),
//         drawer: new Drawer(
//           child: ListView(children: <Widget>[
//             new UserAccountsDrawerHeader(
//                 accountName: new Text('Anom Mudita'),
//                 accountEmail: new Text('gusmangananda@gmail.com'),
//                 currentAccountPicture: new CircleAvatar(
//                   backgroundImage: new NetworkImage(
//                       'https://i.pinimg.com/originals/91/86/6b/91866b918c9cca0747f483a46943e926.jpg'),
//                 )),
//             new ListTile(
//                 title: new Text('About Page'),
//                 onTap: () {
//                   //teknik rute
//                   Navigator.of(context).pop();
//                   Navigator.push(
//                       context,
//                       new MaterialPageRoute(
//                         builder: (BuildContext context) => new AboutPage(),
//                       ));
//                 }),
//             //garis pemisah
//             new Divider(
//               color: Colors.black45,
//               height: 5.0,
//             ),
//             new ListTile(
//                 title: new Text('About Page'),
//                 onTap: () {
//                   //teknik rute
//                   Navigator.of(context).pop();
//                   Navigator.push(
//                       context,
//                       new MaterialPageRoute(
//                         builder: (BuildContext context) => new AboutPage(),
//                       ));
//                 }),
//           ]),
//         ));
//   }
// }
