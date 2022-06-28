import 'package:flutter/material.dart';

class Buying extends StatefulWidget {
  Buying({Key? key}) : super(key: key);
  @override
  State<Buying> createState() => _Buying();
}

class _Buying extends State<Buying> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text('SERVICE AJAIB',
              style: TextStyle(
                  color: Color.fromARGB(255, 209, 209, 209),
                  fontSize: 14,
                  fontFamily: 'Roboto')),
        ),
        body: ListView(
          children: [
            Container(
              // ignore: unnecessary_new
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // ignore: unnecessary_new
                  new Container(
                    child: const Icon(
                      Icons.watch_later_outlined,
                      color: Colors.blue,
                      size: 24.0,
                      semanticLabel: 'Pesananmu sedang diproses',
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
