import 'package:prosol_task/domain/models/menu_section.dart';
import 'package:prosol_task/gen/assets.gen.dart';

List<MenuSection> menuSections = [
  MenuSection(
    title: "Village",
    iconPath: Assets.icons.mapSurface,
  ),
  MenuSection(
    title: "Districts",
    iconPath: Assets.icons.districtIcon,
  ),
  MenuSection(
    title: "Farmers",
    iconPath: Assets.icons.userIcon,
  ),
  MenuSection(
    title: "Farmer History",
    iconPath: Assets.icons.archiveIcon,
  ),
  MenuSection(
    title: "Contracts",
    iconPath: Assets.icons.fileAttachmentIcon,
  ),
  MenuSection(
    title: "Field Measurement",
    iconPath: Assets.icons.rulerIcon,
  ),
  MenuSection(
    title: "Help",
    iconPath: Assets.icons.messageQuestionSquareIcon,
  ),
  MenuSection(
    title: "Settings",
    iconPath: Assets.icons.settingsIcon,
  )
];
