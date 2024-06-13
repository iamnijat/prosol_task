import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:prosol_task/core/themes/extensions/text_style_extensions.dart';
import 'package:prosol_task/core/themes/extensions/theme_extensions.dart';
import 'package:prosol_task/gen/assets.gen.dart';
import 'package:prosol_task/l10n/l10n.dart';

class HomeAppbar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppbar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(61);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: preferredSize,
      child: AppBar(
        backgroundColor: context.customColors.greyScaleFullWhite,
        elevation: 0,
        titleSpacing: 0,
        centerTitle: false,
        actions: [
          SvgPicture.asset(
            Assets.icons.bellIcon,
            colorFilter: ColorFilter.mode(
              context.customColors.greyScale900!,
              BlendMode.srcIn,
            ),
            height: 30,
            width: 30,
          ),
          const SizedBox(width: 16),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: SvgPicture.asset(
              Assets.icons.logo,
              height: 30,
              width: 30,
            ),
          ),
        ],
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              L10n.current.home_appbar_title("Mr. Dror"),
              style: const TextStyle().inter.w500.size(14).copyWith(
                    color: context.customColors.greyScale900,
                  ),
            ),
            Text(
              L10n.current.home_appbar_desc,
              style: const TextStyle().inter.w400.size(12).copyWith(
                    color: context.customColors.greyScale700,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
