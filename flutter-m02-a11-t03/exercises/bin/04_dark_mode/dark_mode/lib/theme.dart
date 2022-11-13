import 'package:flutter/material.dart';

class DarkMode {
  static final light = ThemeData(
    brightness: Brightness.light,
    primaryColor: const Color.fromARGB(255, 24, 69, 104),
    shadowColor: const Color.fromARGB(255, 193, 198, 197),
    hoverColor: const Color.fromARGB(255, 174, 194, 208),
    scaffoldBackgroundColor: const Color.fromARGB(255, 173, 188, 194),
    backgroundColor: const Color.fromARGB(255, 175, 194, 206),
    unselectedWidgetColor: const Color.fromARGB(255, 120, 148, 168),
    splashColor: const Color.fromARGB(255, 216, 216, 216),
    textTheme: _textThemeLight,
  );

  static final dark = ThemeData(
    brightness: Brightness.dark,
    primaryColor: const Color.fromARGB(255, 159, 176, 185),
    shadowColor: const Color.fromARGB(255, 25, 67, 101),
    hoverColor: const Color.fromARGB(255, 13, 17, 23),
    scaffoldBackgroundColor: const Color.fromARGB(255, 173, 188, 194),
    backgroundColor: const Color.fromARGB(255, 32, 39, 41),
    unselectedWidgetColor: const Color.fromARGB(255, 30, 57, 75),
    textTheme: _textThemeDark,
  );

  static const _textThemeLight = TextTheme(
    bodyText2:
        TextStyle(fontSize: 18.0, color: Color.fromARGB(255, 24, 69, 104)),
  );
  static const _textThemeDark = TextTheme(
    bodyText2:
        TextStyle(fontSize: 18.0, color: Color.fromARGB(255, 24, 69, 104)),
  );
}
