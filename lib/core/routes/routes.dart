import 'package:flutter/material.dart';

import 'app_router.dart';

class Routes {
  const Routes._();

  static GlobalKey<NavigatorState> get navigationKey =>
      AppRouter().navigatorKey;

  static BuildContext? get context => navigationKey.currentContext;

  static const home = '/';
  static const layoutSettings = '/layoutSettings';
}
