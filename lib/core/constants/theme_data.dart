import 'package:flutter/material.dart';

import 'app_colors.dart' as colors;

class AppTheme {
  AppTheme._();

  static final ThemeData lightTheme = ThemeData(
    primaryColor: colors.primaryColor,
    appBarTheme: const AppBarTheme(
      color: colors.primaryColor,
    ),
    textTheme: const TextTheme(
      headline6: TextStyle(color: colors.onPrimary),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      hintStyle: TextStyle(
        color: colors.inputTextHint,
      ),
    ),
    colorScheme: const ColorScheme.light(
      primary: colors.primaryColor,
      primaryVariant: colors.primaryColorDark,
      secondary: colors.secondaryColor,
      secondaryVariant: colors.secondaryColorDark,
    ),
  );
}
