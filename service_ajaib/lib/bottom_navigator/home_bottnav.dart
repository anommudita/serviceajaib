import 'package:flutter/material.dart';
import 'package:service_ajaib/drawer/sidebar.dart';

class HomeBotNav extends StatefulWidget {
  HomeBotNav({Key? key}) : super(key: key);

  @override
  State<HomeBotNav> createState() => _TeknisiBotNavState();
}

class _TeknisiBotNavState extends State<HomeBotNav> {
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
      body: Center(
          child: Column(
        children: <Widget>[
          new Center(
            child: new Container(
                child: new Column(
              children: <Widget>[
                new Center(
                    child: new Container(
                        width: 200,
                        height: 200,
                        child:
                            Image.asset('assets/images/Service_Ajaib.jpeg'))),
                new Center(child: new Column())
              ],
            )),
          ),

          //Grid Home
          Container(
            height: 200,
            width: 400,
            padding: EdgeInsets.only(top: 10),
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.0,
                ),
                itemCount: 2,
                itemBuilder: (_, int index) => Card(
                      margin: EdgeInsets.all(10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: [
                              Container(
                                height: 130,
                                width: 200,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/images/B1.jpg"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            padding: EdgeInsets.only(top: 5, left: 10),
                            child: Text(
                              'Processor',
                              style: TextStyle(
                                  color: Colors.amber,
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

          Container(
            height: 200,
            width: 400,
            padding: EdgeInsets.only(top: 10),
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.0,
                ),
                itemCount: 2,
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
                                image:
                                    AssetImage("assets/images/Processor.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            padding: EdgeInsets.only(top: 5, left: 10),
                            child: Text(
                              'RC Compartion',
                              style: TextStyle(
                                  color: Colors.amber,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Roboto'),
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            padding: EdgeInsets.only(top: 5, left: 10),
                            child: Text(
                              'Singaraja - Bali',
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
      )),
    );
  }
}
