import 'package:flutter/material.dart';

class HColors {
  static Color primaryColor() => _defaultPrimary;

  static Color lightPrimaryColor() => _lightPrimary;

  static Color buttonColor() => _mediumPrimary;

  static Color backgroundColor() => Colors.white;

  static Color white() => Colors.white;

  static Color textDark() => _textPrimary;

  static Color textLight() => _textSecondary;

  static MaterialColor getPrimarySwatch() {
    Map<int, Color> color = {
      50: Color.fromRGBO(81, 45, 168, .1),
      100: Color.fromRGBO(81, 45, 168, .2),
      200: Color.fromRGBO(81, 45, 168, .3),
      300: Color.fromRGBO(81, 45, 168, .4),
      400: Color.fromRGBO(81, 45, 168, .5),
      500: Color.fromRGBO(81, 45, 168, .6),
      600: Color.fromRGBO(81, 45, 168, .7),
      700: Color.fromRGBO(81, 45, 168, .8),
      800: Color.fromRGBO(81, 45, 168, .9),
      900: Color.fromRGBO(81, 45, 168, 1),
    };

    return MaterialColor(primaryColor().value, color);
  }
}

//.dark-primary-color    { background: #; }
//.default-primary-color { background: #; }
//.light-primary-color   { background: #; }
//.text-primary-color    { color: #; }
//.accent-color          { background: #; }
//.primary-text-color    { color: #; }
//.secondary-text-color  { color: #757575; }
//.divider-color         { border-color: #; }

const _darkPrimary = const Color(0xFF512DA8);
const _defaultPrimary = const Color(0xFF673AB7);
const _mediumPrimary = const Color(0xFF7457B9);
const _lightPrimary = const Color(0xFFD1C4E9);
const _textPrimary = const Color(0xFF212121);
const _textSecondary = const Color(0xFF757575);
const _accent = const Color(0xFF03A9F4);
const _divider = const Color(0xFFBDBDBD);
