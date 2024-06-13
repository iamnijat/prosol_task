import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:prosol_task/core/themes/extensions/text_style_extensions.dart';
import 'package:prosol_task/core/themes/extensions/theme_extensions.dart';

class CustomSidebarMenuItem extends StatelessWidget {
  final String? title;
  final TextStyle? titleTextStyle;
  final TextStyle? subtitleTextStyle;
  final Widget? startIcon;
  final String? iconPath;
  final VoidCallback? onTileTap;

  const CustomSidebarMenuItem({
    super.key,
    this.title,
    this.titleTextStyle,
    this.subtitleTextStyle,
    this.startIcon,
    this.iconPath,
    this.onTileTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTileTap,
        child: Padding(
          padding: const EdgeInsets.only(
            top: 9,
            bottom: 11,
            left: 18,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              startIcon == null
                  ? SvgPicture.asset(
                      iconPath ?? "",
                      colorFilter: ColorFilter.mode(
                        context.customColors.iconSideBarLeftDefault!,
                        BlendMode.srcIn,
                      ),
                      height: 24,
                      width: 24,
                    )
                  : startIcon!,
              const SizedBox(
                width: 29,
              ),
              Text(
                title ?? "",
                textAlign: TextAlign.start,
                style: titleTextStyle ?? defaultTitleTextStyle(context),
              ),
            ],
          ),
        ));
  }

  TextStyle? defaultTitleTextStyle(BuildContext context) {
    return const TextStyle().inter.w500.size(16).copyWith(
          color: context.customColors.textSideBarDefault,
        );
  }
}
