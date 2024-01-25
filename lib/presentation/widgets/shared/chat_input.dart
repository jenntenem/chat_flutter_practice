import 'package:flutter/material.dart';

class ChatInput extends StatelessWidget {
  final ValueChanged<String> onValue;

  const ChatInput({super.key, required this.onValue});

  @override
  Widget build(BuildContext context) {
    final chatInputController = TextEditingController();
    final FocusNode focusNode = FocusNode();

    sendMessage(String value) {
      // print('Submit value $value');
      onValue(value);
      chatInputController.clear();
      focusNode.requestFocus();
    }

    final OutlineInputBorder outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: BorderSide.none,
    );

    final InputDecoration inputDecoration = InputDecoration(
      hintText: 'Message',
      filled: true,
      contentPadding: const EdgeInsets.all(10),
      border: outlineInputBorder,
      suffixIcon: IconButton(
        icon: const Icon(Icons.send),
        onPressed: () => sendMessage(chatInputController.value.text),
      ),
    );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
      child: TextFormField(
        decoration: inputDecoration,
        controller: chatInputController,
        focusNode: focusNode,
        onFieldSubmitted: sendMessage,
      ),
    );
  }
}
