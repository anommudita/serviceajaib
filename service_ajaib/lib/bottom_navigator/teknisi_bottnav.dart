import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:service_ajaib/drawer/sidebar.dart';

class TeknisiBotNav extends StatefulWidget {
  TeknisiBotNav({Key? key}) : super(key: key);

  @override
  State<TeknisiBotNav> createState() => _TeknisiBotNavState();
}

class _TeknisiBotNavState extends State<TeknisiBotNav> {
  // Mengambil data dari firebase
  CollectionReference db = FirebaseFirestore.instance.collection("listTeknisi");

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
      endDrawer: sideBar(),
      body: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(top: 20, bottom: 2),
            child: new Text(
              'Teknisi',
              style: TextStyle(
                  color: Color.fromARGB(255, 24, 91, 216),
                  fontSize: 18,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: new Text('Teknisi Terpopuler',
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 14,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold)),
          ),
          Container(
            height: 55,
            width: 360,
            padding: EdgeInsets.only(top: 13),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Cari Teknisi',
                labelStyle: TextStyle(
                  color: Color.fromARGB(255, 161, 161, 161),
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Sansation',
                ),
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
          //Grid Teknisi
          Container(
            height: 420,
            width: 400,
            padding: EdgeInsets.only(top: 10),
            child: StreamBuilder(
                stream: db.snapshots(),
                builder: (BuildContext context,
                    AsyncSnapshot<QuerySnapshot> snapshot) {
                  // print(snapshot.data!.docs.length);
                  if (snapshot.hasData) {
                    return GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 1.0,
                        ),
                        itemCount: snapshot.data!.docs.length,
                        itemBuilder: (context, index) => Card(
                              margin: EdgeInsets.all(10),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    height: 130,
                                    width: 200,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage(snapshot
                                            .data!.docs[index]["gambar"]),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    padding: EdgeInsets.only(top: 5, left: 10),
                                    child: Text(
                                      snapshot.data!.docs[index]["namaTeknisi"],
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 216, 20, 138),
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Roboto'),
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    padding: EdgeInsets.only(top: 5, left: 10),
                                    child: Text(
                                      '${snapshot.data!.docs[index]["kota"]} - ${snapshot.data!.docs[index]["provinsi"]}',
                                      style: TextStyle(
                                          color: Color.fromARGB(255, 0, 0, 0),
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Roboto'),
                                    ),
                                  ),
                                ],
                              ),
                            ));
                  }
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }),
          ),
        ],
      ),
    );
  }
}

// Card Teknisi
