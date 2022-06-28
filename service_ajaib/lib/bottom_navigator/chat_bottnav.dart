import 'package:flutter/material.dart';
import 'package:service_ajaib/secreen/chatDetail.dart';
import '../models/chatUserModel.dart';
import '../widgets/convertationList.dart';

class ChatBotNav extends StatefulWidget {
  ChatBotNav({Key? key}) : super(key: key);
  //FavoriteBotNav
  @override
  State<ChatBotNav> createState() => _ChatBotNavState();
}

class _ChatBotNavState extends State<ChatBotNav> {
  List<ChatUsers> chatUsers = [
    ChatUsers(
        name: "Kerta",
        messageText: "Mesan teknisi bagaimana caranya?",
        imageURL: "../assets/images/Teknisi 1.jpg",
        time: "Now"),
    ChatUsers(
        name: "Younky",
        messageText: "Belok kiri mas",
        imageURL: "../assets/images/Teknisi 2.jpg",
        time: "Yesterday"),
    ChatUsers(
        name: "Anom",
        messageText: "PP aku kok sama ",
        imageURL: "../assets/images/rangga.jpg",
        time: "31 Mar"),
    ChatUsers(
        name: "Wahde",
        messageText: "Kok gak selesai ini mas? ",
        imageURL: "../assets/images/B1.jpg",
        time: "31 Mar"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => Navigator.push(
            context, MaterialPageRoute(builder: (_) => ChatDetailPage())),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SafeArea(
                child: Padding(
                  padding: EdgeInsets.only(left: 16, right: 16, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Chat",
                        style: TextStyle(
                            fontSize: 32, fontWeight: FontWeight.bold),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            left: 8, right: 8, top: 2, bottom: 2),
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.pink[50],
                        ),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.add,
                              color: Colors.blue,
                              size: 20,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Text(
                              "Add New",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16, left: 16, right: 16),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search...",
                    hintStyle: TextStyle(color: Colors.grey.shade600),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey.shade600,
                      size: 20,
                    ),
                    filled: true,
                    fillColor: Colors.grey.shade100,
                    contentPadding: EdgeInsets.all(8),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.grey.shade100)),
                  ),
                ),
              ),
              ListView.builder(
                itemCount: chatUsers.length,
                shrinkWrap: true,
                padding: EdgeInsets.only(top: 16),
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return ConversationList(
                    name: chatUsers[index].name,
                    messageText: chatUsers[index].messageText,
                    imageUrl: chatUsers[index].imageURL,
                    time: chatUsers[index].time,
                    isMessageRead: (index == 0 || index == 3) ? true : false,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
