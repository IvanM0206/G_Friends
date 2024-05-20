import 'package:flutter/material.dart';
import 'package:g_friends/chats.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chats"),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(
            children: [
              RowChats(),
              RowChats(),
              RowChats(),
          ],
          ),
        ]
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.chat_outlined),
            label: "Chats",
        ),
        
        BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile"
        )
      ],
      ),
    );
  }
}
