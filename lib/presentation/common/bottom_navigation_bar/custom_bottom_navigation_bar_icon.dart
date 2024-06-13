import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:prosol_task/core/themes/extensions/theme_extensions.dart';

class CustomButtonNavigationBarIcon extends StatelessWidget {
  final String? iconPath;
  final bool isActive;
  const CustomButtonNavigationBarIcon({
    super.key,
    this.iconPath,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(bottom: 5, top: 5),
        child: SvgPicture.asset(
          iconPath ?? '',
          colorFilter: ColorFilter.mode(
            isActive
                ? context.theme.primaryColor
                : context.customColors.navbar!,
            BlendMode.srcIn,
          ),
          height: 30,
          width: 30,
        ));
  }
}
