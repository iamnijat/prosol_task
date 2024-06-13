import 'package:flutter/material.dart';

import 'colors/custom_colors.dart';
import 'colors/i_app_colors.dart';

abstract class ITheme {
  abstract final ThemeData baseTheme;

  abstract final IAppColors appColors;

  abstract final Color primaryColor;

  abstract final Color scaffoldBackgroundColor;

  abstract final CustomColors customColors;

  abstract final BottomNavigationBarThemeData bottomNavigationBarTheme;
}

extension IThemeExtension on ITheme {
  ThemeData getThemeData() {
    return baseTheme.copyWith(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      extensions: [
        customColors,
      ],
      scaffoldBackgroundColor: scaffoldBackgroundColor,
      primaryColor: primaryColor,
      bottomNavigationBarTheme: bottomNavigationBarTheme,
    );
  }
}
