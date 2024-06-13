import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:prosol_task/core/themes/extensions/text_style_extensions.dart';
import 'package:prosol_task/core/themes/extensions/theme_extensions.dart';
import 'package:prosol_task/gen/assets.gen.dart';
import 'package:prosol_task/l10n/l10n.dart';
import 'package:prosol_task/presentation/common/expansion_tile/custom_expansion_tile.dart';

class ContractsSection extends StatelessWidget {
  const ContractsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomExpansionTile(
      title: L10n.current.contracts_section_title,
      children: [
        SizedBox(
          height: 146,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  _draftBox(context, title: "Draft", count: 2),
                  const SizedBox(
                    height: 6,
                  ),
                  _draftBox(context, title: "Agreed", count: 0),
                ],
              ),
              const SizedBox(
                width: 6,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  _draftBox(context, title: "Created", count: 1),
                  const SizedBox(
                    height: 6,
                  ),
                  _draftBox(context, title: "Signed", count: 1),
                ],
              ),
              const SizedBox(
                width: 12,
              ),
              _approvedBox(context, title: "Approved", count: 4),
            ],
          ),
        )
      ],
    );
  }

  Container _draftBox(BuildContext context, {String? title, int? count}) {
    return Container(
      width: 87,
      height: 70,
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 8,
      ),
      alignment: Alignment.topLeft,
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: context.customColors.greyScale200!,
        ),
        color: context.customColors.greyScaleFullWhite,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title ?? "",
            style: const TextStyle().inter.w400.size(14).copyWith(
                  color: context.customColors.textSubtle,
                ),
          ),
          const SizedBox(height: 4),
          Text(
            count?.toString() ?? "",
            style: const TextStyle().inter.w500.size(18).copyWith(
                  color: context.customColors.greyScale900,
                ),
          ),
        ],
      ),
    );
  }

  Container _approvedBox(BuildContext context, {String? title, int? count}) {
    return Container(
      width: 146,
      height: 120,
      padding: const EdgeInsets.symmetric(
        horizontal: 13,
        vertical: 18,
      ),
      alignment: Alignment.topLeft,
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: context.customColors.greyScale200!,
        ),
        color: context.customColors.greyScaleFullWhite,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    title ?? "",
                    style: const TextStyle().inter.w600.size(18).copyWith(
                          color: context.customColors.textSubtle,
                        ),
                  ),
                  const SizedBox(
                    width: 6,
                  ),
                  SvgPicture.asset(
                    Assets.icons.checkMark,
                    colorFilter: ColorFilter.mode(
                      context.customColors.iconSideBarLeftDefault!,
                      BlendMode.srcIn,
                    ),
                    height: 16,
                    width: 16,
                  ),
                ],
              ),
              const SizedBox(height: 4),
              Text(
                count?.toString() ?? "",
                style: const TextStyle().inter.w500.size(18).copyWith(
                      color: context.customColors.greyScale900,
                    ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: SvgPicture.asset(
              Assets.icons.penIcon,
              colorFilter: ColorFilter.mode(
                context.theme.primaryColor,
                BlendMode.srcIn,
              ),
              height: 24,
              width: 24,
            ),
          ),
        ],
      ),
    );
  }
}
