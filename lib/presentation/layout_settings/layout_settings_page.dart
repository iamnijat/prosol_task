import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prosol_task/application/providers/layout_sections_provider.dart';
import 'package:prosol_task/presentation/common/appbar/layout_settings_appbar.dart';
import 'package:prosol_task/presentation/common/bottom_navigation_bar/custom_bottom_navigation_bar.dart';
import 'package:prosol_task/presentation/layout_settings/widgets/layout_settings_content.dart';

@RoutePage()
class LayoutSettingsPage extends ConsumerStatefulWidget {
  const LayoutSettingsPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _LayoutSettingsPageState();
}

class _LayoutSettingsPageState extends ConsumerState<LayoutSettingsPage> {
  @override
  Widget build(BuildContext context) {
    final layoutSectionsNotifier = ref.read(
      layoutSectionsProvider.notifier,
    );

    final state = ref.watch(layoutSectionsProvider);
    return Scaffold(
      backgroundColor: const Color(0xFFF9FAFB),
      appBar: LayoutSettingsAppbar(
        saveSections: () async => await layoutSectionsNotifier.saveSections(),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: LayoutSettingsContent(
          sections: state,
          stateNotifier: layoutSectionsNotifier,
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        index: 0,
        nav: (ff) {},
      ),
    );
  }
}
