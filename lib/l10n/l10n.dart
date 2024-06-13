// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class L10n {
  L10n();

  static L10n? _current;

  static L10n get current {
    assert(_current != null,
        'No instance of L10n was loaded. Try to initialize the L10n delegate before accessing L10n.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<L10n> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = L10n();
      L10n._current = instance;

      return instance;
    });
  }

  static L10n of(BuildContext context) {
    final instance = L10n.maybeOf(context);
    assert(instance != null,
        'No instance of L10n present in the widget tree. Did you add L10n.delegate in localizationsDelegates?');
    return instance!;
  }

  static L10n? maybeOf(BuildContext context) {
    return Localizations.of<L10n>(context, L10n);
  }

  /// `en`
  String get locale {
    return Intl.message(
      'en',
      name: 'locale',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get bottom_navigation_bar_home {
    return Intl.message(
      'Home',
      name: 'bottom_navigation_bar_home',
      desc: '',
      args: [],
    );
  }

  /// `Map`
  String get bottom_navigation_bar_map {
    return Intl.message(
      'Map',
      name: 'bottom_navigation_bar_map',
      desc: '',
      args: [],
    );
  }

  /// `Help`
  String get bottom_navigation_bar_help {
    return Intl.message(
      'Help',
      name: 'bottom_navigation_bar_help',
      desc: '',
      args: [],
    );
  }

  /// `Stats`
  String get bottom_navigation_bar_stats {
    return Intl.message(
      'Stats',
      name: 'bottom_navigation_bar_stats',
      desc: '',
      args: [],
    );
  }

  /// `Tasks`
  String get bottom_navigation_bar_tasks {
    return Intl.message(
      'Tasks',
      name: 'bottom_navigation_bar_tasks',
      desc: '',
      args: [],
    );
  }

  /// `Hello, {user}`
  String home_appbar_title(String user) {
    return Intl.message(
      'Hello, $user',
      name: 'home_appbar_title',
      desc: '',
      args: [user],
    );
  }

  /// `Nice to see you again!`
  String get home_appbar_desc {
    return Intl.message(
      'Nice to see you again!',
      name: 'home_appbar_desc',
      desc: '',
      args: [],
    );
  }

  /// `Contracts`
  String get contracts_section_title {
    return Intl.message(
      'Contracts',
      name: 'contracts_section_title',
      desc: '',
      args: [],
    );
  }

  /// `Work acts`
  String get work_acts_title {
    return Intl.message(
      'Work acts',
      name: 'work_acts_title',
      desc: '',
      args: [],
    );
  }

  /// `Lands`
  String get lands_title {
    return Intl.message(
      'Lands',
      name: 'lands_title',
      desc: '',
      args: [],
    );
  }

  /// `Expenses`
  String get expenses_title {
    return Intl.message(
      'Expenses',
      name: 'expenses_title',
      desc: '',
      args: [],
    );
  }

  /// `Reports`
  String get reports_title {
    return Intl.message(
      'Reports',
      name: 'reports_title',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<L10n> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<L10n> load(Locale locale) => L10n.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
