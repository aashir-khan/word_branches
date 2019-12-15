import 'package:flutter/material.dart';

import 'app_colors.dart';

ThemeData buildThemeData() {
  final baseTheme = ThemeData.light();

  return baseTheme.copyWith(
      primaryColor: primaryColor,
      primaryColorLight: primaryColorLight,
      primaryColorDark: primaryColorDark,
      accentColor: secondaryColor);
}
