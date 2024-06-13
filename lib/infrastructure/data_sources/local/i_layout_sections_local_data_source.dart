import 'package:hive_flutter/hive_flutter.dart';
import 'package:prosol_task/domain/models/layout_sections_model.dart';

abstract class ILayoutSectionsLocalDataSource {
  Future<Box<LayoutSectionsModel>> openLayoutSectionsBox();

  Future<LayoutSectionsModel?> getSections();

  Future<void> updateSections(int index, LayoutSectionsModel item);
}
