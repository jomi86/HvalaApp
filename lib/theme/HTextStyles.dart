import 'package:flutter/material.dart';

import 'HColors.dart';

class HTextStyle {
  static TextStyle buttonRegular(BuildContext context) =>
      defaultTestStyle(context).copyWith(
        fontSize: 16.0,
        color: HColors.white(),
      );

  static TextStyle buttonSmall(BuildContext context) =>
      defaultTestStyle(context).copyWith(
        fontSize: 14.0,
        color: HColors.white(),
      );

  static TextStyle appTitle(BuildContext context) => defaultTestStyle(context)
      .copyWith(fontSize: 28.0, color: HColors.white());

  static TextStyle titleRegular(BuildContext context) =>
      defaultTestStyle(context).copyWith(fontSize: 20.0);

  static TextStyle subtitleRegular(BuildContext context) =>
      defaultTestStyle(context)
          .copyWith(fontSize: 16.0, color: HColors.textLight());

  static TextStyle tabBarRegular(BuildContext context) =>
      defaultTestStyle(context)
          .copyWith(fontSize: 12.0, color: HColors.textLight());

  static TextStyle tabBarSelected(BuildContext context) =>
      defaultTestStyle(context)
          .copyWith(fontSize: 12.0, color: HColors.primaryColor());

  static TextStyle defaultTestStyle(BuildContext context) => TextStyle(
      fontFamily: "Roboto",
      fontSize: 18.0,
      fontWeight: FontWeight.normal,
      color: HColors.textDark());
}
