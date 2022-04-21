import 'package:flutter/material.dart';
import 'package:service_ajaib/bottom_navigator/shop.dart';
import 'package:service_ajaib/bottom_navigator/teknisi_bottnav.dart';
import 'package:service_ajaib/bottom_navigator/home_bottnav.dart';
import 'package:service_ajaib/bottom_navigator/favorite_bottnav.dart';
import 'package:service_ajaib/bottom_navigator/chat_bottnav.dart';

class BottomNavApp extends StatefulWidget {
  BottomNavApp({Key? key}) : super(key: key);

  @override
  State<BottomNavApp> createState() => _BottomNavAppState();
}

class _BottomNavAppState extends State<BottomNavApp> {
  //sebagai fitur tab agar bisa ganti-ganti slide menu
  //final = datanya bisa diubah namun dengan catetantidak bisa dibuat ulang
  int currentTab = 0;
  final List<Widget> screens = [
    HomeBotNav(),
    TeknisiBotNav(),
    FavoriteBotNav(),
    ChatBotNav(),
    ShopBotNav(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = HomeBotNav();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton(
          child: new Icon(Icons.shopping_cart),
          onPressed: () {
            setState(() {
              currentScreen = ShopBotNav();
              currentTab = 0;
            });
          }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        //shape: CircularNotchedRectangle(),
        //notchMargin: 10,
        color: Color.fromARGB(255, 243, 248, 255),
        child: Container(
          height: 60,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <
                  Widget>[
            Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(() {
                    currentScreen = HomeBotNav();
                    currentTab = 0;
                  });
                },
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.home,
                        color: currentTab == 0 ? Colors.blue : Colors.grey,
                      ),
                      Text(
                        'Home',
                        style: TextStyle(
                            color: currentTab == 0 ? Colors.blue : Colors.grey),
                      )
                    ]),
              ),
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(() {
                    currentScreen = new TeknisiBotNav();
                    currentTab = 1;
                  });
                },
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.engineering,
                        color: currentTab == 1 ? Colors.blue : Colors.grey,
                      ),
                      Text(
                        'Teknisi',
                        style: TextStyle(
                            color: currentTab == 1 ? Colors.blue : Colors.grey),
                      )
                    ]),
              ),
            ]),
            // Right Tab icons
            Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(() {
                    currentScreen = FavoriteBotNav();
                    currentTab = 2;
                  });
                },
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.favorite,
                        color: currentTab == 2 ? Colors.blue : Colors.grey,
                      ),
                      Text(
                        'Wishlist',
                        style: TextStyle(
                            color: currentTab == 2 ? Colors.blue : Colors.grey),
                      )
                    ]),
              ),
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(() {
                    currentScreen = new ChatBotNav();
                    currentTab = 3;
                  });
                },
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.chat,
                        color: currentTab == 3 ? Colors.blue : Colors.grey,
                      ),
                      Text(
                        'Chat',
                        style: TextStyle(
                            color: currentTab == 3 ? Colors.blue : Colors.grey),
                      )
                    ]),
              ),
            ])
          ]),
        ),
      ),
    );
  }
}

class Shop {}
