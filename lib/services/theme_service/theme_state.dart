part of 'theme_cubit.dart';

@freezed
class ThemeState with _$ThemeState {
  const factory ThemeState.initial() = Initial;

  const factory ThemeState.themeChanged(ThemeMode themeMode) = ThemeChanged;
}
