import 'package:flutter/material.dart';

import 'package:chat_flutter_practice/domain/entities/message.class.dart';

class MessageBubble extends StatelessWidget {
  final SendType sendBy; // 0: me, 1: other
  final int index;
  final Message message;

  const MessageBubble(
      {super.key, required this.sendBy, this.index = 0, required this.message})
      : assert(sendBy == SendType.me || sendBy == SendType.other,
            'Invalid sendBy value');

  @override
  Widget build(BuildContext context) {
    final ColorScheme colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: sendBy == SendType.me
          ? CrossAxisAlignment.end
          : CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          // height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: sendBy == SendType.me ? colors.primary : colors.secondary,
          ),
          margin: const EdgeInsets.all(2),
          // color: Colors.amber[200], // Can't no be used with BoxDecoration
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              message.text,
              style: const TextStyle(color: Colors.white, fontSize: 13),
            ),
          ),
        ),
        if (sendBy == SendType.other && message.imageUrl?.isNotEmpty == true)
          _ImageBubble(imageUrl: message.imageUrl!),
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
  final String imageUrl;

  const _ImageBubble({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        imageUrl,
        width: size.width * 0.7,
        height: 200,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;

          // Loading image
          return Container(
            width: size.width * 0.7,
            height: 200,
            color: Colors.grey[300],
            child: const Center(child: CircularProgressIndicator()),
          );
        },
      ),
    );
  }
}
