import 'package:flutter/material.dart';
import 'package:chat_flutter_practice/domain/entities/message.class.dart';

class ChatProvider extends ChangeNotifier {
  final ScrollController chatScrollController = ScrollController();

  List<Message> messages = [
    Message(
      text: 'Hello babe, how are you?',
      senderType: SendType.me,
    ),
    Message(
      text: 'c; Hello',
      senderType: SendType.me,
    ),
    Message(
      text: 'I AM GOOD, THANKS!!!',
      senderType: SendType.other,
    ),
  ];

  Future<void> sendMessage(String text) async {
    if (text.isEmpty || text.trim().isEmpty) return;

    final Message message = Message(
      text: text,
      senderType: SendType.me,
    );
    messages.add(message);
    notifyListeners();
    moveScrollToBottom();
  }

  Future<void> moveScrollToBottom() async {
    chatScrollController.animateTo(
      chatScrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }
}
