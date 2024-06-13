import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:prosol_task/core/routes/routes.dart';
import 'package:prosol_task/core/themes/extensions/text_style_extensions.dart';
import 'package:prosol_task/core/themes/extensions/theme_extensions.dart';
import 'package:prosol_task/gen/assets.gen.dart';

class CustomSidebarHeader extends StatelessWidget {
  const CustomSidebarHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      padding: const EdgeInsets.only(
        left: 15,
        right: 24,
      ),
      decoration: BoxDecoration(
        color: context.customColors.backgroundPage,
        border: Border(
          bottom: Divider.createBorderSide(context,
              color: Colors.white, width: 0.0),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 61,
                height: 61,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(
                      Assets.images.avatar.path,
                    ),
                  ),
                  color: context.customColors.backgroundPage,
                ),
              ),
              const SizedBox(height: 19),
              Text(
                'Haim Dror',
                style: const TextStyle().inter.w500.size(16).copyWith(
                      color: context.customColors.textDefault,
                    ),
              ),
              const SizedBox(height: 3),
              Text(
                '#89124913',
                style: const TextStyle().inter.w400.size(14).copyWith(
                      color: context.customColors.textSubtle,
                    ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 35),
              child: TextButton(
                onPressed: () {
                  context.router.navigateNamed(Routes.layoutSettings);
                },
                child: Text(
                  'Edit',
                  style: const TextStyle().inter.w500.size(16).copyWith(
                        color: context.customColors.textLink,
                      ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
