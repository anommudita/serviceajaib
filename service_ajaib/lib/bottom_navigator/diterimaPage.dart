import 'package:flutter/material.dart';

class Diterima extends StatefulWidget {
  Diterima({Key? key}) : super(key: key);
  @override
  State<Diterima> createState() => _Diterima();
}

class _Diterima extends State<Diterima> {
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
                      Icons.check_circle_outline,
                      color: Colors.blue,
                      size: 24.0,
                      semanticLabel: 'Pesananmu sudah kami terima',
                    ),
                  ),
                  new Container(

                      child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          new Container(
                            width: 200,
                            height: 45,
                            child: TextButton(
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.blue,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              onPressed: () {},
                              child: Text(
                                "HOME",
                                style: TextStyle(
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                          new Container(
                            width: 200,
                            height: 45,
                            child: TextButton(
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.blue,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              onPressed: () {},
                              child: Text(
                                "Chat Teknisi",
                                style: TextStyle(
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  )),

                ],
              ),
            )
          ],
        ));
  }
}
