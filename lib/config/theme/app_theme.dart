import 'package:flutter/material.dart';

const colorList = <Color> [
  Colors.blue,
  Colors.red,
  Colors.green,
  Colors.purple,
  Colors.orange,
  Colors.teal,
  Colors.pink,
  Colors.amber,
  Colors.brown,
  Colors.cyan,
  Colors.deepPurple,
];


class AppTheme {

  final int selectedColor;

  AppTheme({
    this.selectedColor = 0,
  }): assert ( selectedColor < colorList.length, 'selectedColor must be less than ${colorList.length}'), 
      assert ( selectedColor >= 0 && selectedColor < colorList.length, 'selectedColor must be less than ${colorList.length - 1}');

  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: colorList[selectedColor],
    appBarTheme: const AppBarTheme(
      centerTitle: false,
    ),
  );

}