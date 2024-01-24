import 'package:flutter/material.dart';

const _staticColor = Color.fromARGB(255, 0, 0, 0);
const _color = <int, Color>{
  0: Color.fromARGB(255, 254, 255, 255),
  1: Color.fromRGBO(255, 255, 255, 1),
  2: Color(0xFF000000),
  3: Colors.amberAccent,
  4: _staticColor,
};

class AppTheme {
  final int selectedColor;

  AppTheme({
    required this.selectedColor,
  }) : assert(selectedColor >= 0 && selectedColor <= 4,
            'Invalid color state, must be between 0 and ${_color.length - 1} inclusive.');

  ThemeData get theme {
    return ThemeData(
        useMaterial3: true,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepOrange, // Change the button color
          background: _color[selectedColor],
        ));
  }
}
