import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prosol_task/application/providers/hive_database_provider.dart';
import 'package:prosol_task/core/mock_data/layout_sections.dart';
import 'package:prosol_task/domain/models/layout_sections.dart';
import 'package:prosol_task/domain/models/layout_sections_model.dart';

class LayoutSectionsStateNotifier extends StateNotifier<LayoutSections?> {
  LayoutSectionsStateNotifier(this.ref) : super(null) {
    hiveDatabase = ref.read(hiveDatabaseProvider);
    getSections();
  }
  late HiveDatabase? hiveDatabase;
  final StateNotifierProviderRef ref;

  Future<void> getSections() async {
    final sections = await hiveDatabase?.getSections();

    if (sections?.sections == null) {
      hiveDatabase?.updateSections(LayoutSectionsModel(
        sections: layoutSections,
      ));
    }

    final sectionModel = await hiveDatabase?.getSections();

    print(sectionModel?.sections);

    final allSections = sectionModel?.sections;

    state = LayoutSections(
      visibleSections:
          allSections!.where((section) => section.isVisible).toList(),
      hiddenSections:
          allSections.where((section) => !section.isVisible).toList(),
    );
  }

  void updateVisibleSections(int index) {
    final item = state?.visibleSections.removeAt(index);
    item?.isVisible = false;
    state?.hiddenSections.add(item!);
    _updateOrder(state!.visibleSections);
    _updateOrder(state!.hiddenSections);
    state = LayoutSections(
      visibleSections: state!.visibleSections,
      hiddenSections: state!.hiddenSections,
    );
  }

  void updateHiddenSections(int index) {
    final item = state?.hiddenSections.removeAt(index);
    item?.isVisible = true;
    state?.visibleSections.add(item!);
    _updateOrder(state!.visibleSections);
    _updateOrder(state!.hiddenSections);
    state = LayoutSections(
      visibleSections: state!.visibleSections,
      hiddenSections: state!.hiddenSections,
    );
  }

  void reOrderVisibleSections(int oldIndex, int newIndex) {
    if (oldIndex < newIndex) {
      newIndex -= 1;
    }
    LayoutSection? item = state?.visibleSections.removeAt(oldIndex);

    state?.visibleSections.insert(newIndex, item!);
    _updateOrder(state!.visibleSections);

    state = LayoutSections(
      visibleSections: state!.visibleSections,
      hiddenSections: state!.hiddenSections,
    );
  }

  void reOrderHiddenSections(int oldIndex, int newIndex) {
    if (oldIndex < newIndex) {
      newIndex -= 1;
    }
    LayoutSection? item = state?.hiddenSections.removeAt(oldIndex);

    state?.hiddenSections.insert(newIndex, item!);
    _updateOrder(state!.hiddenSections);

    state = LayoutSections(
      visibleSections: state!.visibleSections,
      hiddenSections: state!.hiddenSections,
    );
  }

  void _updateOrder(List<LayoutSection> sections) {
    for (int i = 0; i < sections.length; i++) {
      sections[i] = sections[i].copyWith(order: i);
    }
  }

  Future<void> saveSections() async {
    List<LayoutSection> combinedSections = [];

    combinedSections.addAll(state?.visibleSections ?? []);
    combinedSections.addAll(state?.hiddenSections ?? []);

    await hiveDatabase?.updateSections(LayoutSectionsModel(
      sections: combinedSections,
    ));

    getSections();
  }
}
