import 'package:auto_route/auto_route.dart';
import 'package:prosol_task/core/routes/routes.dart';
import 'package:prosol_task/presentation/home/home_page.dart';
import 'package:prosol_task/presentation/layout_settings/layout_settings_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: HomeRoute.page,
          initial: true,
        ),
        AutoRoute(
          page: LayoutSettingsRoute.page,
          path: Routes.layoutSettings,
        ),
      ];
}
