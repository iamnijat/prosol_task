import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:prosol_task/core/themes/extensions/text_style_extensions.dart';
import 'package:prosol_task/core/themes/extensions/theme_extensions.dart';
import 'package:prosol_task/gen/assets.gen.dart';

class CustomExpansionTile extends StatelessWidget {
  final String? title;
  final List<Widget> children;
  const CustomExpansionTile({
    super.key,
    this.title,
    this.children = const <Widget>[],
  });

  @override
  Widget build(BuildContext context) {
    return ListTileTheme(
        contentPadding: EdgeInsets.zero,
        horizontalTitleGap: 4,
        child: ExpansionTile(
          initiallyExpanded: true,
          backgroundColor: context.customColors.backgroundPage,
          childrenPadding: const EdgeInsets.symmetric(
            horizontal: 12.5,
            vertical: 16,
          ),
          collapsedBackgroundColor: context.customColors.backgroundPage,
          tilePadding: const EdgeInsets.symmetric(
            horizontal: 12.5,
          ),
          collapsedShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: BorderSide(
                width: 1,
                color: context.customColors.borderDefault!,
              )),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: BorderSide(
                width: 1,
                color: context.customColors.borderDefault!,
              )),
          leading: SvgPicture.asset(
            Assets.icons.arrowHeadDownIcon,
            colorFilter: ColorFilter.mode(
              context.theme.primaryColor,
              BlendMode.srcIn,
            ),
            height: 16,
            width: 16,
          ),
          trailing: Text(
            'View all',
            style: const TextStyle().inter.w500.size(14).copyWith(
                  color: context.customColors.textLink,
                ),
          ),
          title: Text(
            title ?? "",
            style: const TextStyle().inter.w500.size(18).copyWith(
                  color: context.customColors.greyScale900,
                ),
          ),
          children: children,
        ));
  }
}
