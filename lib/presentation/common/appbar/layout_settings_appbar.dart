import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:prosol_task/core/themes/extensions/text_style_extensions.dart';
import 'package:prosol_task/core/themes/extensions/theme_extensions.dart';
import 'package:prosol_task/gen/assets.gen.dart';

class LayoutSettingsAppbar extends StatelessWidget
    implements PreferredSizeWidget {
  final VoidCallback saveSections;
  const LayoutSettingsAppbar({super.key, required this.saveSections});

  @override
  Size get preferredSize => const Size.fromHeight(65);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: preferredSize,
      child: AppBar(
        backgroundColor: context.customColors.greyScaleFullWhite,
        elevation: 0,
        titleSpacing: 0,
        centerTitle: true,
        shape: Border(
            bottom: BorderSide(
          color: context.customColors.borderDefault!,
          width: 1,
        )),
        leading: InkWell(
            onTap: () {
              context.back();
            },
            child: Container(
              constraints: const BoxConstraints(
                minHeight: 44,
                minWidth: 30,
              ),
              child: Center(
                child: SvgPicture.asset(
                  Assets.icons.cornerUpLeftIcon,
                  colorFilter: ColorFilter.mode(
                    context.customColors.iconButtonDefault!,
                    BlendMode.srcIn,
                  ),
                  height: 30,
                  width: 30,
                ),
              ),
            )),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: TextButton(
              onPressed: saveSections,
              child: Text(
                'Save',
                style: const TextStyle().inter.w500.size(16).copyWith(
                      color: context.customColors.textLink,
                    ),
              ),
            ),
          ),
        ],
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Layout",
              style: const TextStyle().inter.w600.size(18).copyWith(
                    color: context.customColors.textDefault,
                  ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              "Manage homepage view",
              style: const TextStyle().inter.w400.size(12).copyWith(
                    color: context.customColors.textSubtle,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
