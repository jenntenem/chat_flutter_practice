import 'package:flutter/material.dart';
import 'package:chat_flutter_practice/presentation/widgets/shared/chat_list.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text('Username <3'),
            centerTitle: false,
            leading: const Padding(
              padding: EdgeInsets.all(6.0),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://cdn.britannica.com/12/215012-004-33C40587/English-actor-Tom-Hiddleston-2018.jpg'),
              ),
            )),
        body: _ChatView());
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Column(children: <Widget>[
      // CHAT AREA
      Expanded(child: ChatList()),
      // INPUT AREA
      Center(child: Text("data")),
    ]));
  }
}
