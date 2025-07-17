import 'package:coinin/data/database/local_storage.dart';
import 'package:coinin/di/storage_injector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'theme_state.dart';

part 'theme_cubit.freezed.dart';

enum ThemeType { system, light, dark }

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(const ThemeState.initial()) {
    init();
  }

  ThemeMode themeMode = ThemeMode.system;

  final themeMap = {
    ThemeType.dark: ThemeMode.dark,
    ThemeType.light: ThemeMode.light,
    ThemeType.system: ThemeMode.system,
  };

  void changeTheme(ThemeType? themeType) {
    themeMode = themeMap[themeType] ?? ThemeMode.system;
    getIt<LocalStorage>().setTheme(themeMode.name);
    emit(ThemeState.themeChanged(themeMode));
  }

  void init() {
    final themeValue = getIt<LocalStorage>().getTheme;
    themeMode = ThemeMode.values.firstWhere(
      (mode) => mode.name == themeValue,
      orElse: () => ThemeMode.system,
    );
    emit(ThemeState.themeChanged(themeMode));
  }
}
