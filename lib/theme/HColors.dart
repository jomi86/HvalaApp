import 'package:flutter/material.dart';

class HColors {
  static Color primaryColor() => _defaultPrimary;

  static Color lightPrimaryColor() => _lightPrimary;

  static Color buttonColor() => _darkPrimary;

  static Color actionButtonColor() => _accent;

  static Color backgroundColor() => Colors.white;

  static Color white() => Colors.white;

  static Color textDark() => _textPrimary;

  static Color textLight() => _textSecondary;

  static Color dividerColor() => _divider;

  static MaterialColor getPrimarySwatch() {
    Map<int, Color> color = {
      50: Color.fromRGBO(76, 175, 80, .1),
      100: Color.fromRGBO(76, 175, 80, .2),
      200: Color.fromRGBO(76, 175, 80, .3),
      300: Color.fromRGBO(76, 175, 80, .4),
      400: Color.fromRGBO(76, 175, 80, .5),
      500: Color.fromRGBO(76, 175, 80, .6),
      600: Color.fromRGBO(76, 175, 80, .7),
      700: Color.fromRGBO(76, 175, 80, .8),
      800: Color.fromRGBO(76, 175, 80, .9),
      900: Color.fromRGBO(76, 175, 80, 1),
    };

    return MaterialColor(primaryColor().value, color);
  }
}

const _darkPrimary = const Color(0xFF388E3C);
const _defaultPrimary = const Color(0xFF4CAF50);
const _mediumPrimary = const Color(0xFF5DB761);
const _lightPrimary = const Color(0xFFC8E6C9);
const _textPrimary = const Color(0xFF212121);
const _textSecondary = const Color(0xFF757575);
const _accent = const Color(0xFFFF9800);
const _divider = const Color(0xFFBDBDBD);

//.dark-primary-color    { background: #; }
//.default-primary-color { background: #4CAF50; }
//.light-primary-color   { background: #; }
//.text-primary-color    { color: #FFFFFF; }
//.accent-color          { background: #; }
//.primary-text-color    { color: #212121; }
//.secondary-text-color  { color: #757575; }
//.divider-color         { border-color: #BDBDBD; }
