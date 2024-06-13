import 'package:flutter/material.dart';
import 'package:prosol_task/core/themes/extensions/theme_extensions.dart';
import 'package:prosol_task/presentation/common/sidebar/custom_sidebar_content.dart';
import 'package:prosol_task/presentation/common/sidebar/custom_sidebar_header.dart';

class CustomSidebar extends StatelessWidget {
  const CustomSidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: context.customColors.backgroundPage,
      child: ListView(
        padding: EdgeInsets.zero,
        children: const <Widget>[
          SizedBox(
            height: 95,
          ),
          CustomSidebarHeader(),
          CustomSidebarContent(),
        ],
      ),
    );
  }
}
