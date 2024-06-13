import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:prosol_task/core/themes/extensions/text_style_extensions.dart';
import 'package:prosol_task/core/themes/extensions/theme_extensions.dart';
import 'package:prosol_task/gen/assets.gen.dart';

class LayoutSettingsOrderableItem extends StatelessWidget {
  final String? title;
  final String? id;
  final bool isHidden;
  final VoidCallback removeItem;
  const LayoutSettingsOrderableItem({
    super.key,
    this.title,
    this.id,
    this.isHidden = false,
    required this.removeItem,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: Row(
        key: key,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              if (!isHidden)
                InkWell(
                  onTap: removeItem,
                  child: Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                      color: context.customColors.error500,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                        Assets.icons.minusIcon,
                        colorFilter: ColorFilter.mode(
                          context.customColors.greyScaleFullWhite!,
                          BlendMode.srcIn,
                        ),
                        width: 14,
                      ),
                    ),
                  ),
                ),
              if (!isHidden) const SizedBox(width: 12),
              Text(
                title ?? "",
                style: const TextStyle().inter.w400.size(16).copyWith(
                      color: context.customColors.textDefault,
                    ),
              ),
            ],
          ),
          SvgPicture.asset(
            Assets.icons.menuIcon,
            colorFilter: ColorFilter.mode(
              context.customColors.iconButtonDefault!,
              BlendMode.srcIn,
            ),
            width: 24,
            height: 24,
          ),
        ],
      ),
    );
  }
}
