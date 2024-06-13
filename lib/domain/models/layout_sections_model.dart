import 'package:hive/hive.dart';

part 'layout_sections_model.g.dart';

@HiveType(typeId: 0)
class LayoutSectionsModel {
  @HiveField(0)
  final List<LayoutSection> sections;

  const LayoutSectionsModel({
    required this.sections,
  });
}

@HiveType(typeId: 1)
class LayoutSection {
  @HiveField(0)
  final String id;
  @HiveField(1)
  final String title;
  @HiveField(2)
  bool isVisible;
  @HiveField(3)
  final int order;

  LayoutSection({
    required this.id,
    required this.title,
    required this.isVisible,
    required this.order,
  });

  LayoutSection copyWith({
    String? id,
    String? title,
    bool? isVisible,
    int? order,
  }) {
    return LayoutSection(
      id: id ?? this.id,
      title: title ?? this.title,
      isVisible: isVisible ?? this.isVisible,
      order: order ?? this.order,
    );
  }
}
