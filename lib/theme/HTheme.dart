import 'package:flutter/material.dart';

import 'HButtonTheme.dart';
import 'HColors.dart';
import 'HTextStyles.dart';

class HTheme {
  static getDefaultTheme(BuildContext context) => new ThemeData(
        primarySwatch: HColors.getPrimarySwatch(),
        buttonTheme: HButtonThemeData(),
        fontFamily: 'Roboto',
        textTheme: TextTheme(
            headline: HTextStyle.titleRegular(context),
            title: HTextStyle.titleRegular(context),
            subtitle: HTextStyle.subtitleRegular(context),
            button: HTextStyle.buttonRegular(context)),
      );
}
