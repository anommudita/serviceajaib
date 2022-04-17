import 'package:flutter/material.dart';

class ChatBotNav extends StatefulWidget {
  ChatBotNav({Key? key}) : super(key: key);
  //FavoriteBotNav
  @override
  State<ChatBotNav> createState() => _ChatBotNavState();
}

class _ChatBotNavState extends State<ChatBotNav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat'),
      ),
      body: Center(
        child: new Text('Chat Screen', style: new TextStyle(fontSize: 40)),
      ),
    );
  }
}
