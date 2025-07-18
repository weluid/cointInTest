import 'package:auto_route/auto_route.dart';
import 'package:coinin/core/extentions/context_extentions.dart';
import 'package:coinin/data/database/local_storage.dart';
import 'package:coinin/di/storage_injector.dart';
import 'package:coinin/presentation/settings_page/widgets/change_theme_popup.dart';
import 'package:coinin/presentation/settings_page/widgets/settings_item.dart';
import 'package:coinin/presentation/widgets/common_square_button.dart';
import 'package:coinin/presentation/widgets/common_appbar.dart';
import 'package:coinin/services/theme_service/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  ThemeType? themeType;
  late ValueNotifier<ThemeType?> _theme;

  @override
  void initState() {
    super.initState();

    _theme = ValueNotifier(themeType);
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final l10n = context.l10n;
    return DecoratedBox(
      decoration: BoxDecoration(gradient: context.commonBackgroundGradient),
      child: Scaffold(
        appBar: CommonAppBar(
          textTitle: l10n.settings,
          showBackButton: false,
          actions: CommonSquareButton(
            onTap: () => context.maybePop(),
            icon: Icon(Icons.close, color: colors.primary),
          ),
        ),
        body: ListView(
          children: [
            ValueListenableBuilder<ThemeType?>(
              builder: (_, state, __) {
                return SettingsItem(
                  title: context.l10n.appearance,
                  description: _getThemeValue(_theme.value, context),
                  image: Padding(padding: const EdgeInsets.only(right: 8)),
                  onTap: () async {
                    await showModalBottomSheet<ThemeType>(
                      context: context,
                      backgroundColor: context.colors.background,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(10),
                        ),
                      ),
                      builder: (context) => const ChangeThemePopup(),
                    ).then((value) {
                      if (value != null) {
                        themeType = value;
                        _theme.value = themeType;
                        context.read<ThemeCubit>().changeTheme(themeType);
                      }
                    });
                  },
                );
              },
              valueListenable: _theme,
            ),
          ],
        ),
      ),
    );
  }

  String _getThemeValue(ThemeType? type, BuildContext context) {
    final l10n = context.l10n;

    final themeType = type ?? _getStoredThemeType();

    switch (themeType) {
      case ThemeType.dark:
        return l10n.dark;
      case ThemeType.light:
        return l10n.light;
      case ThemeType.system:
        return l10n.sameDevice;
    }
  }

  ThemeType _getStoredThemeType() {
    final storedTheme = getIt<LocalStorage>().getTheme;

    return ThemeType.values.firstWhere(
      (e) => e.name == storedTheme,
      orElse: () => ThemeType.system,
    );
  }
}
