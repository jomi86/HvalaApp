import 'package:flutter/material.dart';

import 'HColors.dart';

class HButtonThemeData extends ButtonThemeData {
  HButtonThemeData()
      : super(
          buttonColor: HColors.primaryGreen(),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(5.0),
            ),
          ),
        );
}
