import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prosol_task/application/notifiers/layout_sections_state_notifier.dart';
import 'package:prosol_task/domain/models/layout_sections.dart';

final layoutSectionsProvider =
    StateNotifierProvider<LayoutSectionsStateNotifier, LayoutSections?>(
  (ref) => LayoutSectionsStateNotifier(
    ref,
  ),
);
