import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:prosol_task/core/themes/extensions/responsive_size_extensions.dart';
import 'package:prosol_task/core/themes/extensions/text_style_extensions.dart';
import 'package:prosol_task/core/themes/extensions/theme_extensions.dart';
import 'package:prosol_task/gen/assets.gen.dart';
import 'package:prosol_task/l10n/l10n.dart';
import 'package:prosol_task/presentation/common/expansion_tile/custom_expansion_tile.dart';

class LandsSection extends StatelessWidget {
  const LandsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomExpansionTile(
      title: L10n.current.lands_title,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            _landBox(context, name: "Cotton field 2", size: "18ha"),
            const SizedBox(
              height: 12,
            ),
            _landBox(context, name: "Cotton field 2", size: "18ha"),
          ],
        ),
      ],
    );
  }

  Container _landBox(BuildContext context, {String? name, String? size}) {
    return Container(
      width: context.width,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
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
          Row(
            children: [
              Image.asset(
                Assets.images.land.path,
                height: 70,
                width: 70,
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name ?? "",
                    style: const TextStyle().inter.w500.size(14).copyWith(
                          color: context.customColors.textDefault,
                        ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    size ?? "",
                    style: const TextStyle().inter.w400.size(12).copyWith(
                          color: context.customColors.textSubtle,
                        ),
                  ),
                ],
              ),
            ],
          ),
          SvgPicture.asset(
            Assets.icons.penIcon,
            colorFilter: ColorFilter.mode(
              context.customColors.iconButtonDefault!,
              BlendMode.srcIn,
            ),
            height: 24,
            width: 24,
          ),
        ],
      ),
    );
  }
}
