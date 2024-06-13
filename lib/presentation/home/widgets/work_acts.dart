import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:prosol_task/core/themes/extensions/responsive_size_extensions.dart';
import 'package:prosol_task/core/themes/extensions/text_style_extensions.dart';
import 'package:prosol_task/core/themes/extensions/theme_extensions.dart';
import 'package:prosol_task/gen/assets.gen.dart';
import 'package:prosol_task/l10n/l10n.dart';
import 'package:prosol_task/presentation/common/expansion_tile/custom_expansion_tile.dart';

class WorkActs extends StatelessWidget {
  const WorkActs({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomExpansionTile(
      title: L10n.current.work_acts_title,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            _actBox(context, act: "Act: #981275", time: "18/04/2024, 5;42 PM"),
            const SizedBox(
              height: 10,
            ),
            _actBox(context, act: "Act: #981275", time: "18/04/2024, 5;42 PM"),
          ],
        ),
      ],
    );
  }

  Container _actBox(BuildContext context, {String? act, String? time}) {
    return Container(
      width: context.width,
      padding: const EdgeInsets.only(
        left: 23,
        right: 10,
        top: 9,
        bottom: 9,
      ),
      alignment: Alignment.topLeft,
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: context.customColors.greyScale200!,
        ),
        color: context.customColors.greyScaleFullWhite,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                act ?? "",
                style: const TextStyle().inter.w500.size(14).copyWith(
                      color: context.customColors.textDefault,
                    ),
              ),
              const SizedBox(height: 4),
              Text(
                time ?? "",
                style: const TextStyle().inter.w400.size(12).copyWith(
                      color: context.customColors.textSubtle,
                    ),
              ),
            ],
          ),
          SvgPicture.asset(
            Assets.icons.penIcon,
            colorFilter: ColorFilter.mode(
              context.customColors.greyScale700!,
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
