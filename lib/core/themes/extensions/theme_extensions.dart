import 'package:flutter/material.dart';
import 'package:prosol_task/core/themes/i_theme.dart';
import 'package:prosol_task/core/themes/theme_dark.dart';
import 'package:prosol_task/core/themes/theme_light.dart';

import '../colors/custom_colors.dart';

enum AppTheme {
  light,
  dark;
}

extension TextThemeExtension on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;
}

extension ColorSchemeExtension on BuildContext {
  ColorScheme get colorScheme => Theme.of(this).colorScheme;
}

extension ThemeExtension on BuildContext {
  ThemeData get theme => Theme.of(this);
}

extension CustomColorsExtension on BuildContext {
  CustomColors get customColors => Theme.of(this).extension<CustomColors>()!;

  CustomColors get customColorsDark => ThemeDark().customColors;

  CustomColors get customColorsLight => ThemeLight().customColors;
}

extension ThemeSwitchExtension on AppTheme {
  ThemeData getThemeData() {
    return switch (this) {
      AppTheme.light => ThemeLight().getThemeData(),
      AppTheme.dark => ThemeDark().getThemeData(),
    };
  }
}
