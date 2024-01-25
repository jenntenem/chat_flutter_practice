import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:chat_flutter_practice/presentation/widgets/chat/message_bubble.dart';
import 'package:chat_flutter_practice/presentation/providers/chat.provider.dart';

class ChatList extends StatelessWidget {
  const ChatList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final chatProvider = context.watch<ChatProvider>();

    return ListView.builder(
      controller: chatProvider.chatScrollController,
      padding: const EdgeInsets.all(8),
      itemCount: chatProvider.messages.length,
      itemBuilder: (context, index) {
        final message = chatProvider.messages[index];
        return MessageBubble(sendBy: message.senderType, message: message);
      },
    );
  }
}
