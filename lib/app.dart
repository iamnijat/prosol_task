import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:prosol_task/core/routes/app_router.dart';
import 'package:prosol_task/core/themes/i_theme.dart';
import 'package:prosol_task/core/themes/theme_light.dart';
import 'package:prosol_task/l10n/l10n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final router = AppRouter();
    return MaterialApp.router(
      title: 'Flutter Demo',
      supportedLocales: L10n.delegate.supportedLocales,
      localizationsDelegates: const [
        L10n.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      debugShowCheckedModeBanner: false,
      locale: const Locale('en'),
      theme: ThemeLight().getThemeData(),
      routerDelegate: AutoRouterDelegate(
        router,
        navigatorObservers: () => [
          AutoRouteObserver(),
        ],
      ),
      routeInformationProvider: router.routeInfoProvider(),
      routeInformationParser: router.defaultRouteParser(),
    );
  }
}
