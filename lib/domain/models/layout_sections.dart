import 'package:prosol_task/domain/models/layout_sections_model.dart';

class LayoutSections {
  final List<LayoutSection> visibleSections;
  final List<LayoutSection> hiddenSections;

  const LayoutSections({
    required this.visibleSections,
    required this.hiddenSections,
  });

  LayoutSections copyWith({
    List<LayoutSection>? visibleSections,
    List<LayoutSection>? hiddenSections,
  }) {
    return LayoutSections(
      visibleSections: visibleSections ?? this.visibleSections,
      hiddenSections: hiddenSections ?? this.hiddenSections,
    );
  }
}
