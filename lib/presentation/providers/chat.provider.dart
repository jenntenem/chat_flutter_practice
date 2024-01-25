import 'package:flutter/material.dart';
import 'package:chat_flutter_practice/domain/entities/message.class.dart';

class ChatProvider extends ChangeNotifier {
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
    final Message message = Message(
      text: text,
      senderType: SendType.me,
    );
    messages.add(message);
    notifyListeners();
  }
}
