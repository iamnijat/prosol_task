import 'package:prosol_task/domain/models/layout_sections_model.dart';

const String idContractsByStatus = "contracts_by_status";
const String idWorkActs = "work_acts";
const String idLands = "lands";
const String idExpenses = "expenses";
const String idReports = "reports";
const String idWeatherInfo = "weather_info";
const String idFeature = "feature";

List<LayoutSection> layoutSections = [
  LayoutSection(
    id: idContractsByStatus,
    title: "Contracts by status",
    isVisible: true,
    order: 0,
  ),
  LayoutSection(
    id: idWorkActs,
    title: "Work acts",
    isVisible: true,
    order: 1,
  ),
  LayoutSection(
    id: idLands,
    title: "Lands",
    isVisible: true,
    order: 2,
  ),
  LayoutSection(
    id: idExpenses,
    title: "Expenses",
    isVisible: true,
    order: 3,
  ),
  LayoutSection(
    id: idReports,
    title: "Reports",
    isVisible: true,
    order: 4,
  ),
  LayoutSection(
    id: idWeatherInfo,
    title: "Weather info",
    isVisible: false,
    order: 5,
  ),
  LayoutSection(
    id: idFeature,
    title: "Feature",
    isVisible: false,
    order: 6,
  ),
];
