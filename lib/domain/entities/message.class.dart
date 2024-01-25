enum SendType { me, other }

class Message {
  final String text;
  final String? imageUrl;
  final SendType senderType;

  Message({required this.text, required this.senderType, this.imageUrl});
}
