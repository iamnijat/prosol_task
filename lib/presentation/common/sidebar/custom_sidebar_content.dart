import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:prosol_task/core/mock_data/menu_sections.dart';
import 'package:prosol_task/core/themes/extensions/text_style_extensions.dart';
import 'package:prosol_task/core/themes/extensions/theme_extensions.dart';
import 'package:prosol_task/gen/assets.gen.dart';
import 'package:prosol_task/presentation/common/sidebar/custom_sidebar_menu_item.dart';

class CustomSidebarContent extends StatelessWidget {
  const CustomSidebarContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MediaQuery.removePadding(
          removeTop: true,
          removeBottom: true,
          context: context,
          child: ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: menuSections.length,
              itemBuilder: (context, index) {
                final section = menuSections[index];
                return Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: CustomSidebarMenuItem(
                    title: section.title,
                    iconPath: section.iconPath,
                  ),
                );
              }),
        ),
        const SizedBox(
          height: 8,
        ),
        Divider(
          color: context.customColors.greyScale200,
        ),
        CustomSidebarMenuItem(
          title: "Logout",
          startIcon: SvgPicture.asset(
            Assets.icons.logOutIcon,
            colorFilter: ColorFilter.mode(
              context.customColors.error500!,
              BlendMode.srcIn,
            ),
            height: 24,
            width: 24,
          ),
          titleTextStyle: const TextStyle().inter.w500.size(16).copyWith(
                color: context.customColors.error500,
              ),
        ),
        const SizedBox(
          height: 8,
        ),
        CustomSidebarMenuItem(
          title: "About Agrone",
          iconPath: Assets.icons.infoCircleIcon,
        ),
      ],
    );
  }
}
