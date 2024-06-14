import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prosol_task/application/providers/hive_database_provider.dart';
import 'package:prosol_task/core/mock_data/layout_sections.dart';
import 'package:prosol_task/domain/models/layout_sections.dart';
import 'package:prosol_task/domain/models/layout_sections_model.dart';

class LayoutSectionsStateNotifier extends StateNotifier<LayoutSections?> {
  LayoutSectionsStateNotifier(this.ref) : super(null) {
    hiveDatabase = ref.read(hiveDatabaseProvider);
    _initializeSections();
  }
  late HiveDatabase? hiveDatabase;
  final StateNotifierProviderRef ref;

  Future<void> _initializeSections() async {
    final sections = await hiveDatabase?.getSections();
    if (sections?.sections == null) {
      await hiveDatabase
          ?.updateSections(LayoutSectionsModel(sections: layoutSections));
    }
    await _fetchSections();
  }

  Future<void> _fetchSections() async {
    final sectionModel = await hiveDatabase?.getSections();
    final allSections = sectionModel?.sections ?? [];

    state = LayoutSections(
      visibleSections:
          allSections.where((section) => section.isVisible).toList(),
      hiddenSections:
          allSections.where((section) => !section.isVisible).toList(),
    );
  }

  void _updateState() {
    state = LayoutSections(
      visibleSections: List.from(state!.visibleSections),
      hiddenSections: List.from(state!.hiddenSections),
    );
  }

  void updateVisibleSections(int index) {
    final item = state?.visibleSections.removeAt(index);
    item?.isVisible = false;
    state?.hiddenSections.add(item!);
    _updateOrder(state!.visibleSections);
    _updateOrder(state!.hiddenSections);
    _updateState();
  }

  void updateHiddenSections(int index) {
    final item = state?.hiddenSections.removeAt(index);
    item?.isVisible = true;
    state?.visibleSections.add(item!);
    _updateOrder(state!.visibleSections);
    _updateOrder(state!.hiddenSections);
    _updateState();
  }

  void reOrderVisibleSections(int oldIndex, int newIndex) {
    if (oldIndex < newIndex) {
      newIndex -= 1;
    }
    LayoutSection? item = state?.visibleSections.removeAt(oldIndex);

    state?.visibleSections.insert(newIndex, item!);
    _updateOrder(state!.visibleSections);

    _updateState();
  }

  void reOrderHiddenSections(int oldIndex, int newIndex) {
    if (oldIndex < newIndex) {
      newIndex -= 1;
    }
    LayoutSection? item = state?.hiddenSections.removeAt(oldIndex);

    state?.hiddenSections.insert(newIndex, item!);
    _updateOrder(state!.hiddenSections);

    _updateState();
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

    _fetchSections();
  }
}
