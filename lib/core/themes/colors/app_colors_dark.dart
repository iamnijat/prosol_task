import 'package:flutter/material.dart';
import 'package:prosol_task/core/themes/colors/custom_colors.dart';
import 'package:prosol_task/core/themes/colors/i_app_colors.dart';

class AppColorsDark implements IAppColors {
  @override
  final Color primaryColor = const Color(0xFF4361EE);

  @override
  late final CustomColors customColors = const CustomColors(
    greyScaleFullWhite: Color(0xFFFFFFFF),
    transparent: Colors.transparent,
    navbar: Color(0xFF667085),
    textLink: Color(0xFF4361EE),
    textDefault: Color.fromARGB(255, 8, 9, 11),
    textSubtle: Color(0xFF888EA8),
    iconButtonDefault: Color(0xFF3D3E5C),
    error500: Color(0xFFE7515A),
    iconSideBarLeftDefault: Color(0xFF888EA8),
    textSideBarDefault: Color(0xFF0E1726),
    greyScale900: Color(0xFF060818),
    greyScale700: Color(0xFF686B6F),
    borderDefault: Color(0xFFE0E6ED),
    backgroundPage: Color(0xFFFAFBFA),
    greyScale200: Color(0xFFECEDEE),
    textInverse: Color(0xFFFFFFFF),
  );
}
