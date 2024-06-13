import 'package:flutter/material.dart';
import 'package:prosol_task/core/themes/extensions/text_style_extensions.dart';
import 'package:prosol_task/core/themes/extensions/theme_extensions.dart';
import 'package:prosol_task/l10n/l10n.dart';
import 'package:prosol_task/presentation/common/expansion_tile/custom_expansion_tile.dart';

class ExpensesSection extends StatelessWidget {
  const ExpensesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomExpansionTile(
      title: L10n.current.expenses_title,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _expenseBox(context, title: "Item name", subtitle: "\$8232.68"),
            _expenseBox(context, title: "Item name", subtitle: "\$0"),
          ],
        ),
        const SizedBox(
          height: 12,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _expenseBox(context, title: "Item name", subtitle: "\$0"),
            _expenseBox(context, title: "Item name", subtitle: "\$0"),
          ],
        ),
      ],
    );
  }

  Container _expenseBox(BuildContext context,
      {String? title, String? subtitle}) {
    return Container(
      width: 180,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
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
            style: const TextStyle().inter.w500.size(14).copyWith(
                  color: context.customColors.textSubtle,
                ),
          ),
          const SizedBox(height: 2),
          Text(
            subtitle ?? "",
            style: const TextStyle().inter.w500.size(18).copyWith(
                  color: context.customColors.textDefault,
                ),
          ),
        ],
      ),
    );
  }
}
