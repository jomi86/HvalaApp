import 'package:flutter/material.dart';

class HColors {
  static Color primaryColor() => _defaultPrimary;

  static Color lightPrimaryColor() => _lightPrimary;

  static Color buttonColor() => _darkPrimary;

  static Color backgroundColor() => Colors.white;

  static Color white() => Colors.white;

  static Color textDark() => _textPrimary;

  static Color textLight() => _textSecondary;

  static MaterialColor getPrimarySwatch() {
    Map<int, Color> color = {
      50: Color.fromRGBO(255, 152, 0, .1),
      100: Color.fromRGBO(255, 152, 0, .2),
      200: Color.fromRGBO(255, 152, 0, .3),
      300: Color.fromRGBO(255, 152, 0, .4),
      400: Color.fromRGBO(255, 152, 0, .5),
      500: Color.fromRGBO(255, 152, 0, .6),
      600: Color.fromRGBO(255, 152, 0, .7),
      700: Color.fromRGBO(255, 152, 0, .8),
      800: Color.fromRGBO(255, 152, 0, .9),
      900: Color.fromRGBO(255, 152, 0, 1),
    };

    return MaterialColor(primaryColor().value, color);
  }
}

const _darkPrimary = const Color(0xFFF57C00);
const _defaultPrimary = const Color(0xFFFF9800);
const _lightPrimary = const Color(0xFFFFE0B2);
const _textPrimary = const Color(0xFF212121);
const _textSecondary = const Color(0xFF757575);
const _accent = const Color(0xFFFF9800);
const _divider = const Color(0xFFBDBDBD);
