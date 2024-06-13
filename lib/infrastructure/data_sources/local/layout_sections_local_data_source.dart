import 'package:hive/hive.dart';

import 'package:prosol_task/domain/models/layout_sections_model.dart';

import 'i_layout_sections_local_data_source.dart';

class LayoutSectionsLocalDataSource implements ILayoutSectionsLocalDataSource {
  static const String layoutSectionsBox = 'layout_sections';
  static const String layoutSectionsKey = 'sections';

  @override
  Future<Box<LayoutSectionsModel>> openLayoutSectionsBox() async {
    if (!Hive.isBoxOpen(layoutSectionsBox)) {
      return await Hive.openBox<LayoutSectionsModel>(layoutSectionsBox);
    }
    return Hive.box<LayoutSectionsModel>(layoutSectionsBox);
  }

  @override
  Future<LayoutSectionsModel?> getSections() async {
    var box = await openLayoutSectionsBox();
    return box.get(layoutSectionsKey);
  }

  @override
  Future<void> updateSections(int index, LayoutSectionsModel item) async {
    var box = await openLayoutSectionsBox();
    await box.put(layoutSectionsKey, item);
  }
}
