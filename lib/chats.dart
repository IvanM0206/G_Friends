import 'package:flutter/material.dart';

class RowChats extends StatelessWidget {
  const RowChats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16.0,90.0,16.0,10.0),
          child: Text(
            'Categoria 1',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          height: 125, // Altura de la lista horizontal
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Chats(),
              Chats(),
            ],
          ),
        ),
        Padding(padding: EdgeInsets.only(bottom: 50.0))
      ],
    );
  }
}


class Chats extends StatelessWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25.0,
      width: 175.0,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.fromLTRB(10.0,10.0,10.0,10.0),
        child: Stack(
          children: [
            Align(
              alignment: Alignment(0.85, 1.0),
              child: IconButton(
                icon: Icon(Icons.chat_outlined),
                onPressed: () {},
              ),
            ),
            Align(
              alignment: Alignment(-0.75, -0.75),
              child: Text(
                "Chat algo",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),
              ),
            )
          ],
        ),
    );
  }
}
