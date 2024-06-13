import 'package:flutter/material.dart';
import 'package:prosol_task/core/themes/extensions/theme_extensions.dart';
import 'package:prosol_task/l10n/l10n.dart';
import 'package:prosol_task/presentation/common/bottom_navigation_bar/custom_bottom_navigation_bar_icon.dart';

import '../../../gen/assets.gen.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int index;
  final void Function(int) nav;
  const CustomBottomNavigationBar({
    super.key,
    required this.index,
    required this.nav,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.customColors.greyScaleFullWhite,
        border: Border(
          top: BorderSide(
            color: context.customColors.borderDefault!,
            width: 1,
          ),
        ),
      ),
      child: BottomNavigationBar(
        fixedColor: context.theme.primaryColor,
        onTap: (index) {
          nav(index);
        },
        currentIndex: index,
        items: [
          BottomNavigationBarItem(
            icon: CustomButtonNavigationBarIcon(
              iconPath: Assets.icons.homeIcon,
              isActive: false,
            ),
            activeIcon: CustomButtonNavigationBarIcon(
              iconPath: Assets.icons.homeIcon,
              isActive: true,
            ),
            label: L10n.current.bottom_navigation_bar_home,
          ),
          BottomNavigationBarItem(
            icon: CustomButtonNavigationBarIcon(
              iconPath: Assets.icons.mapIcon,
              isActive: false,
            ),
            activeIcon: CustomButtonNavigationBarIcon(
              iconPath: Assets.icons.mapIcon,
              isActive: true,
            ),
            label: L10n.current.bottom_navigation_bar_map,
          ),
          BottomNavigationBarItem(
            icon: CustomButtonNavigationBarIcon(
              iconPath: Assets.icons.helpIcon,
              isActive: false,
            ),
            activeIcon: CustomButtonNavigationBarIcon(
              iconPath: Assets.icons.helpIcon,
              isActive: true,
            ),
            label: L10n.current.bottom_navigation_bar_help,
          ),
          BottomNavigationBarItem(
            icon: CustomButtonNavigationBarIcon(
              iconPath: Assets.icons.statIcon,
              isActive: false,
            ),
            activeIcon: CustomButtonNavigationBarIcon(
              iconPath: Assets.icons.statIcon,
              isActive: true,
            ),
            label: L10n.current.bottom_navigation_bar_stats,
          ),
          BottomNavigationBarItem(
            icon: CustomButtonNavigationBarIcon(
              iconPath: Assets.icons.taskIcon,
              isActive: false,
            ),
            activeIcon: CustomButtonNavigationBarIcon(
              iconPath: Assets.icons.taskIcon,
              isActive: true,
            ),
            label: L10n.current.bottom_navigation_bar_tasks,
          ),
        ],
      ),
    );
  }
}
