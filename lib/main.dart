import 'package:flutter/material.dart';
import 'package:chat_flutter_practice/config/themes/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat App YES/NO',
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 0).theme,
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Material App Bar'),
          ),
          body: Container(
              // Path: lib/main.dart
              // Compare this snippet from lib/config/themes/app_theme.dart:
              // color: Color(AppTheme().selectedColor),
              )),
    );
  }
}
