import 'package:flutter/material.dart';

class HColors {
  static Color primaryRed() => Color.fromRGBO(237, 29, 36, 1);

  static Color primaryGreen() => Colors.blueGrey[700];

  static Color white() => Color.fromRGBO(255, 255, 255, 1);

  static Color textDark() => Color.fromRGBO(64, 76, 91, 1);

  static Color darkGrey() => Color.fromRGBO(141, 153, 166, 1);

  static Color lightGrey() => Color.fromRGBO(0, 0, 0, 0.16);

  static MaterialColor getPrimarySwatch() {
    Map<int, Color> color = {
      50: Color.fromRGBO(237, 29, 36, .1),
      100: Color.fromRGBO(237, 29, 36, .2),
      200: Color.fromRGBO(237, 29, 36, .3),
      300: Color.fromRGBO(237, 29, 36, .4),
      400: Color.fromRGBO(237, 29, 36, .5),
      500: Color.fromRGBO(237, 29, 36, .6),
      600: Color.fromRGBO(237, 29, 36, .7),
      700: Color.fromRGBO(237, 29, 36, .8),
      800: Color.fromRGBO(237, 29, 36, .9),
      900: Color.fromRGBO(237, 29, 36, 1),
    };

    return MaterialColor(primaryRed().value, color);
  }
}

/// === Just another way we can get these custom colors ===
///
/// Extension function which can be accessed through theme like this:
/// Theme.of(context).colorScheme.primaryRed
extension CustomColorScheme on ColorScheme {
  Color get primaryRed => Color.fromRGBO(237, 29, 36, 1);
  Color get white => Color.fromRGBO(255, 255, 255, 1);
  Color get textDark => Color.fromRGBO(50, 50, 50, 1);
  Color get darkGrey => Color.fromRGBO(156, 154, 153, 1);
  Color get lightGrey => Color.fromRGBO(0, 0, 0, 0.16);
}
