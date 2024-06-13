import 'package:flutter/material.dart';
import 'package:prosol_task/core/themes/colors/app_colors_light.dart';
import 'package:prosol_task/core/themes/colors/custom_colors.dart';
import 'package:prosol_task/core/themes/colors/i_app_colors.dart';
import 'package:prosol_task/core/themes/extensions/text_style_extensions.dart';
import 'package:prosol_task/core/themes/i_theme.dart';

class ThemeLight implements ITheme {
  @override
  final ThemeData baseTheme = ThemeData.light();

  @override
  final IAppColors appColors = AppColorsLight();

  @override
  late final Color primaryColor = appColors.primaryColor;

  @override
  late final CustomColors customColors = appColors.customColors;

  @override
  late final Color scaffoldBackgroundColor = customColors.greyScaleFullWhite!;

  @override
  late final BottomNavigationBarThemeData bottomNavigationBarTheme =
      BottomNavigationBarThemeData(
    enableFeedback: true,
    elevation: 0,
    type: BottomNavigationBarType.fixed,
    backgroundColor: customColors.greyScaleFullWhite,
    unselectedItemColor: customColors.navbar,
    selectedItemColor: primaryColor,
    selectedLabelStyle: const TextStyle().nunito.w700.size(10).copyWith(
          color: primaryColor,
        ),
    unselectedLabelStyle: const TextStyle().nunito.w500.size(10).copyWith(
          color: customColors.navbar,
        ),
  );
}
