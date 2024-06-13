import 'package:flutter/material.dart';
import 'package:prosol_task/application/notifiers/layout_sections_state_notifier.dart';
import 'package:prosol_task/core/themes/extensions/text_style_extensions.dart';
import 'package:prosol_task/core/themes/extensions/theme_extensions.dart';
import 'package:prosol_task/domain/models/layout_sections.dart';
import 'package:prosol_task/presentation/layout_settings/widgets/layout_settings_orderable_item.dart';

class LayoutSettingsContent extends StatefulWidget {
  final LayoutSections? sections;
  final LayoutSectionsStateNotifier stateNotifier;
  const LayoutSettingsContent(
      {super.key, this.sections, required this.stateNotifier});

  @override
  State<LayoutSettingsContent> createState() => _LayoutSettingsContentState();
}

class _LayoutSettingsContentState extends State<LayoutSettingsContent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 28,
          ),
          child: Text(
            "Visible in home page",
            style: const TextStyle().inter.w400.size(14).copyWith(
                  color: context.customColors.textSubtle,
                ),
          ),
        ),
        ReorderableListView(
          shrinkWrap: true,
          children: [
            for (int i = 0; i < widget.sections!.visibleSections.length; i++)
              LayoutSettingsOrderableItem(
                key: ValueKey(widget.sections!.visibleSections[i].id),
                id: widget.sections!.visibleSections[i].id,
                title: widget.sections!.visibleSections[i].title,
                removeItem: () {
                  widget.stateNotifier.updateVisibleSections(i);
                },
              ),
          ],
          onReorder: (oldIndex, newIndex) {
            widget.stateNotifier.reOrderVisibleSections(oldIndex, newIndex);
          },
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 24,
          ),
          child: Text(
            "Hidden",
            style: const TextStyle().inter.w400.size(14).copyWith(
                  color: context.customColors.textSubtle,
                ),
          ),
        ),
        ReorderableListView(
          shrinkWrap: true,
          children: [
            for (int i = 0; i < widget.sections!.hiddenSections.length; i++)
              LayoutSettingsOrderableItem(
                key: ValueKey(widget.sections!.hiddenSections[i].id),
                id: widget.sections!.hiddenSections[i].id,
                title: widget.sections!.hiddenSections[i].title,
                isHidden: true,
                removeItem: () {
                  widget.stateNotifier.updateHiddenSections(i);
                },
              ),
          ],
          onReorder: (oldIndex, newIndex) {
            widget.stateNotifier.reOrderHiddenSections(oldIndex, newIndex);
          },
        ),
      ],
    );
  }
}

class MockItem {
  final String id;
  final String title;
  final bool isVisible;

  MockItem(
    this.id,
    this.title,
    this.isVisible,
  );
}
