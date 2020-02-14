import 'package:flutter/material.dart';

import 'app_colors.dart' as colors;

class AppTheme {
  AppTheme._();

  static final ThemeData lightTheme = ThemeData(
    primaryColor: colors.primaryColor,
    appBarTheme: AppBarTheme(
      color: colors.primaryColor,
    ),
    textTheme: TextTheme(
      headline6: TextStyle(color: colors.onPrimary),
    ),
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: TextStyle(
        color: colors.inputTextHint,
      ),
    ),
    colorScheme: ColorScheme.light(
      primary: colors.primaryColor,
      primaryVariant: colors.primaryColorDark,
      secondary: colors.secondaryColor,
      secondaryVariant: colors.secondaryColorDark,
    ),
  );
}
