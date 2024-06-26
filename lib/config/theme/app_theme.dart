import 'package:flutter/material.dart';

const Color _customColor = Color.fromARGB(255, 255, 0, 0);
const List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.pink,
];

class AppTheme {
  final int selectedColor;
  final Brightness brightness;

  AppTheme({this.selectedColor = 0, required this.brightness})
      : assert(selectedColor >= 0 && selectedColor <= _colorThemes.length - 1,
            'Colors must be between 0 and ${_colorThemes.length}');

  ThemeData theme() {
    return ThemeData(
      fontFamily: 'CascadiaCodePL',
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectedColor],
      brightness: brightness,
    );
  }
}
