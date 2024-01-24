import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  final int sendBy; // 0: me, 1: other
  final int index;

  const MessageBubble({super.key, required this.sendBy, this.index = 0})
      : assert(sendBy >= 0 && sendBy <= 1, 'Invalid sendBy value');

  @override
  Widget build(BuildContext context) {
    final ColorScheme colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment:
          sendBy == 0 ? CrossAxisAlignment.end : CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          // height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: sendBy == 0 ? colors.primary : colors.secondary,
          ),
          margin: const EdgeInsets.all(2),
          // color: Colors.amber[200], // Can't no be used with BoxDecoration
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'Entry $index by ${sendBy == 0 ? 'me' : 'other'}',
              style: const TextStyle(color: Colors.white, fontSize: 13),
            ),
          ),
        ),
      ],
    );
  }
}
