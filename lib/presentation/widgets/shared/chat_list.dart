import 'package:flutter/material.dart';
import 'package:chat_flutter_practice/presentation/widgets/chat/message_bubble.dart';

class ChatList extends StatelessWidget {
  const ChatList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: 100,
      itemBuilder: (context, index) {
        return MessageBubble(sendBy: index % 2, index: index);
      },
    );
  }
}
