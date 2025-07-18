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

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name =
        (locale.countryCode?.isEmpty ?? false)
            ? locale.languageCode
            : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Free Premium Available`
  String get freePremium {
    return Intl.message(
      'Free Premium Available',
      name: 'freePremium',
      desc: '',
      args: [],
    );
  }

  /// `Tap to claim`
  String get tapToClaim {
    return Intl.message('Tap to claim', name: 'tapToClaim', desc: '', args: []);
  }

  /// `CoinIn`
  String get coinIn {
    return Intl.message('CoinIn', name: 'coinIn', desc: '', args: []);
  }

  /// `Identify Coin`
  String get identifyCoin {
    return Intl.message(
      'Identify Coin',
      name: 'identifyCoin',
      desc: '',
      args: [],
    );
  }

  /// `Permission was denied.`
  String get permissionDenied {
    return Intl.message(
      'Permission was denied.',
      name: 'permissionDenied',
      desc: '',
      args: [],
    );
  }

  /// `Please allow access to the gallery.`
  String get accessGallery {
    return Intl.message(
      'Please allow access to the gallery.',
      name: 'accessGallery',
      desc: '',
      args: [],
    );
  }

  /// `To upload a photo, CoinIn needs access to your gallery.`
  String get accessCameraDescr {
    return Intl.message(
      'To upload a photo, CoinIn needs access to your gallery.',
      name: 'accessCameraDescr',
      desc: '',
      args: [],
    );
  }

  /// `To Settings`
  String get toSettings {
    return Intl.message('To Settings', name: 'toSettings', desc: '', args: []);
  }

  /// `Cancel`
  String get cancel {
    return Intl.message('Cancel', name: 'cancel', desc: '', args: []);
  }

  /// `Oops! Something went wrong. Try again.`
  String get somethingWentWrong {
    return Intl.message(
      'Oops! Something went wrong. Try again.',
      name: 'somethingWentWrong',
      desc: '',
      args: [],
    );
  }

  /// `Appearance`
  String get appearance {
    return Intl.message('Appearance', name: 'appearance', desc: '', args: []);
  }

  /// `Same as device`
  String get sameDevice {
    return Intl.message(
      'Same as device',
      name: 'sameDevice',
      desc: '',
      args: [],
    );
  }

  /// `uses light or dark mode depending\non your device settings`
  String get sameDeviceDescr {
    return Intl.message(
      'uses light or dark mode depending\non your device settings',
      name: 'sameDeviceDescr',
      desc: '',
      args: [],
    );
  }

  /// `Light`
  String get light {
    return Intl.message('Light', name: 'light', desc: '', args: []);
  }

  /// `Dark`
  String get dark {
    return Intl.message('Dark', name: 'dark', desc: '', args: []);
  }

  /// `Settings`
  String get settings {
    return Intl.message('Settings', name: 'settings', desc: '', args: []);
  }

  /// `Home`
  String get home {
    return Intl.message('Home', name: 'home', desc: '', args: []);
  }

  /// `Search`
  String get search {
    return Intl.message('Search', name: 'search', desc: '', args: []);
  }

  /// `History`
  String get history {
    return Intl.message('History', name: 'history', desc: '', args: []);
  }

  /// `Collection`
  String get collection {
    return Intl.message('Collection', name: 'collection', desc: '', args: []);
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[Locale.fromSubtags(languageCode: 'en')];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
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
