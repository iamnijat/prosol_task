import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:prosol_task/application/providers/layout_sections_provider.dart';
import 'package:prosol_task/core/mock_data/layout_sections.dart';
import 'package:prosol_task/core/themes/extensions/theme_extensions.dart';
import 'package:prosol_task/domain/models/layout_sections_model.dart';
import 'package:prosol_task/gen/assets.gen.dart';
import 'package:prosol_task/presentation/common/appbar/home_appbar.dart';
import 'package:prosol_task/presentation/common/bottom_navigation_bar/custom_bottom_navigation_bar.dart';
import 'package:prosol_task/presentation/common/sidebar/custom_sidebar.dart';
import 'package:prosol_task/presentation/home/widgets/contracts_section.dart';
import 'package:prosol_task/presentation/home/widgets/expenses_section.dart';
import 'package:prosol_task/presentation/home/widgets/lands_section.dart';
import 'package:prosol_task/presentation/home/widgets/reports_section.dart';
import 'package:prosol_task/presentation/home/widgets/work_acts.dart';

@RoutePage()
class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
    final sections = ref.watch(layoutSectionsProvider);
    return Scaffold(
      appBar: const HomeAppbar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.5),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 25),
              ..._buildSections(sections?.visibleSections ?? []),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        index: 0,
        nav: (ff) {},
      ),
      drawer: const CustomSidebar(),
      floatingActionButton: const HomeFloatingActionButton(),
    );
  }

  List<Widget> _buildSections(List<LayoutSection> sections) {
    final sectionWidgets = <Widget>[];

    final sortedSections = sections
        .where((section) => section.isVisible)
        .toList()
      ..sort((a, b) => a.order.compareTo(b.order));

    for (final section in sortedSections) {
      switch (section.id) {
        case idContractsByStatus:
          sectionWidgets.add(const ContractsSection());
          break;
        case idWorkActs:
          sectionWidgets.add(const WorkActs());
          break;
        case idLands:
          sectionWidgets.add(const LandsSection());
          break;
        case idExpenses:
          sectionWidgets.add(const ExpensesSection());
          break;
        case idReports:
          sectionWidgets.add(const ReportsSection());
          break;
      }
      sectionWidgets.add(const SizedBox(height: 24));
    }

    return sectionWidgets;
  }
}

class HomeFloatingActionButton extends StatelessWidget {
  const HomeFloatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: context.theme.primaryColor,
      onPressed: null,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(60),
      ),
      child: SvgPicture.asset(
        Assets.icons.messageIcon,
        colorFilter: ColorFilter.mode(
          context.customColors.textInverse!,
          BlendMode.srcIn,
        ),
        height: 24,
        width: 24,
      ),
    );
  }
}
