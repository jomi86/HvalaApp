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
      50: Color.fromRGBO(0, 121, 107, .1),
      100: Color.fromRGBO(0, 121, 107, .2),
      200: Color.fromRGBO(0, 121, 107, .3),
      300: Color.fromRGBO(0, 121, 107, .4),
      400: Color.fromRGBO(0, 121, 107, .5),
      500: Color.fromRGBO(0, 121, 107, .6),
      600: Color.fromRGBO(0, 121, 107, .7),
      700: Color.fromRGBO(0, 121, 107, .8),
      800: Color.fromRGBO(0, 121, 107, .9),
      900: Color.fromRGBO(0, 121, 107, 1),
    };

    return MaterialColor(primaryColor().value, color);
  }
}

const _darkPrimary = const Color(0xFF00796B);
const _defaultPrimary = const Color(0xFF009688);
const _mediumPrimary = const Color(0xFF339489);
const _lightPrimary = const Color(0xFFB2DFDB);
const _textPrimary = const Color(0xFF212121);
const _textSecondary = const Color(0xFF757575);
const _accent = const Color(0xFF9E9E9E);
const _divider = const Color(0xFFBDBDBD);
