import 'package:flutter/material.dart';
import 'package:chat_flutter_practice/config/themes/app_theme.dart';
import 'package:chat_flutter_practice/presentation/screen/chat/chat.screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat App YES/NO',
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 0).theme,
      home: const ChatScreen(),
    );
  }
}
