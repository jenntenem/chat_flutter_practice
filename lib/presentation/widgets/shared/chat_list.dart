import 'package:flutter/material.dart';

class ChatList extends StatelessWidget {
  const ChatList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: 100,
      itemBuilder: (context, index) {
        return Container(
          height: 50,
          margin: const EdgeInsets.all(2),
          color: Colors.amber[200],
          child: Center(child: Text('Entry $index')),
        );
      },
    );
  }
}
