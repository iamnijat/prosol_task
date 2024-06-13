import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:prosol_task/app.dart';
import 'package:prosol_task/domain/models/layout_sections_model.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final appDocumentDir = await path_provider.getApplicationDocumentsDirectory();
  await Hive.initFlutter(appDocumentDir.path);
  Hive.registerAdapter(LayoutSectionsModelAdapter());
  Hive.registerAdapter(LayoutSectionAdapter());
  runApp(const ProviderScope(child: MyApp()));
}
