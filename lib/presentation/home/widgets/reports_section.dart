import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:prosol_task/core/themes/extensions/text_style_extensions.dart';
import 'package:prosol_task/core/themes/extensions/theme_extensions.dart';
import 'package:prosol_task/gen/assets.gen.dart';
import 'package:prosol_task/l10n/l10n.dart';
import 'package:prosol_task/presentation/common/expansion_tile/custom_expansion_tile.dart';

class ReportsSection extends StatelessWidget {
  const ReportsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomExpansionTile(
      title: L10n.current.reports_title,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _reportBox(context, title: "Task report"),
            _reportBox(context, title: "Finance report"),
          ],
        ),
        const SizedBox(
          height: 12,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _reportBox(context, title: "Sales report"),
            _reportBox(context, title: "Lead report"),
          ],
        ),
      ],
    );
  }

  Container _reportBox(BuildContext context, {String? title}) {
    return Container(
      width: 180,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 19),
      alignment: Alignment.topLeft,
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: context.customColors.greyScale200!,
        ),
        color: context.customColors.greyScaleFullWhite,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title ?? "",
            style: const TextStyle().inter.w500.size(16).copyWith(
                  color: context.customColors.textDefault,
                ),
          ),
          SvgPicture.asset(
            Assets.icons.penIcon,
            colorFilter: ColorFilter.mode(
              context.customColors.iconButtonDefault!,
              BlendMode.srcIn,
            ),
            height: 20,
            width: 20,
          ),
        ],
      ),
    );
  }
}
