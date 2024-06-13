import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive/hive.dart';

import 'package:prosol_task/domain/models/layout_sections_model.dart';

final hiveDatabaseProvider = Provider<HiveDatabase>((ref) => HiveDatabase());

class HiveDatabase {
  late Box<LayoutSectionsModel> _layoutSectionsBox;
  late LayoutSectionsModel? _layoutSections;

  static const String layoutSectionsBox = 'layout_sections';
  static const String layoutSectionsKey = 'sections';

  HiveDatabase();

  Future<Box<LayoutSectionsModel>> openLayoutSectionsBox() async {
    if (!Hive.isBoxOpen(layoutSectionsBox)) {
      _layoutSectionsBox =
          await Hive.openBox<LayoutSectionsModel>(layoutSectionsBox);
    }
    _layoutSectionsBox = Hive.box<LayoutSectionsModel>(layoutSectionsBox);

    return _layoutSectionsBox;
  }

  Future<LayoutSectionsModel?> getSections() async {
    var box = await openLayoutSectionsBox();
    _layoutSections = box.get(layoutSectionsKey);
    return _layoutSections;
  }

  Future<void> updateSections(LayoutSectionsModel item) async {
    var box = await openLayoutSectionsBox();
    await box.put(layoutSectionsKey, item);
    _layoutSections = item;
  }
}
