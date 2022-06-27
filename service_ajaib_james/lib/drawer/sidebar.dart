import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'myheader.dart';

class sideBar extends StatefulWidget {
  sideBar({Key? key}) : super(key: key);

  @override
  State<sideBar> createState() => _sideBarState();
}

class _sideBarState extends State<sideBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
          child: Container(
        child: Column(
          children: [
            MyHeaderDrawer(),
            //MyDrawerList(),
            ElevatedButton(
                onPressed: () => FirebaseAuth.instance.signOut(),
                child: const Text('sing out'))
          ],
        ),
      )),
    );
  }
}

// Widget MyDrawerList() {
//   return Container(
//     height: 100,
//     child: ListView(children: <Widget>[
//       new ListTile(
//           title: new Text('About Page'),
//           onTap: () {
//             new MaterialPageRoute(
//               builder: (BuildContext context) => new LoginPage(),
//             );
//           }),
//       //garis pemisah
//       new Divider(
//         color: Colors.black45,
//         height: 5.0,
//       ),
//       new ListTile(
//           title: new Text('About Page'),
//           onTap: () {
//             new MaterialPageRoute(
//               builder: (BuildContext context) => new LoginPage(),
//             );
//           }),
//     ]),
//   );
// }


// Widget MyDrawerList() {
//   return Container(
//     padding: EdgeInsets.only(
//       top: 15,
//     ),
//     child: Column(
//       // shows the list of menu drawer
//       children: [
//         menuItem(1, "Logout", Icons.exit_to_app,
//             currentPage == DrawerSections.dashboard ? true : false),
//       ],
//     ),
//   );
// }

