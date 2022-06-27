import 'package:flutter/material.dart';
import 'package:service_ajaib/drawer/sidebar.dart';

class ShopBotNav extends StatefulWidget {
  ShopBotNav({Key? key}) : super(key: key);

  @override
  State<ShopBotNav> createState() => _ShopBotNav();
}

class _ShopBotNav extends State<ShopBotNav> {
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
      body: ListView(
        children: [
          Column(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(top: 20, bottom: 2),
                child: new Text(
                  'Shop',
                  style: TextStyle(
                      color: Color.fromARGB(255, 24, 91, 216),
                      fontSize: 18,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: new Text('Barang Terlaris',
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
                    labelText: 'Cari Barang',
                    labelStyle: TextStyle(
                      color: Color.fromARGB(255, 161, 161, 161),
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Sansation',
                    ),
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),
              //Grid Shop
              Container(
                height: 420,
                width: 400,
                padding: EdgeInsets.only(top: 10),
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1.0,
                    ),
                    itemCount: 4,
                    itemBuilder: (_, int index) => Card(
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
                                    image: AssetImage(
                                        "assets/images/Processor.jpg"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                padding: EdgeInsets.only(top: 5, left: 10),
                                child: Text(
                                  'Processor',
                                  style: TextStyle(
                                      color: Colors.blueGrey,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Roboto'),
                                ),
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                padding: EdgeInsets.only(top: 5, left: 10),
                                child: Text(
                                  'RC COMPARATION',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Roboto'),
                                ),
                              ),
                            ],
                          ),
                        )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
