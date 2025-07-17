import 'package:coinin/core/extentions/context_extentions.dart';
import 'package:coinin/data/database/local_storage.dart';
import 'package:coinin/di/storage_injector.dart';
import 'package:coinin/domain/params/radio_params.dart';
import 'package:coinin/presentation/widgets/common_radio_list.dart';
import 'package:coinin/services/theme_service/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

class ChangeThemePopup extends StatelessWidget {
  const ChangeThemePopup({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final storage = getIt<LocalStorage>();

    final currentTheme = storage.getTheme.isEmpty
        ? ThemeType.system.name
        : storage.getTheme;

    return Padding(
      padding: EdgeInsets.zero,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildHeader(context, l10n),
          const SizedBox(height: 20),
          _buildRadioList(context, l10n, currentTheme),
          const SizedBox(height: 24),
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context, dynamic l10n) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 24, 16, 0),
      child: Row(
        children: [
          Text(l10n.appearance, style: context.typography.headlineLarge),
          const Spacer(),
          IconButton(
            onPressed: context.maybePop,
            icon: const Icon(Icons.close),
          ),
        ],
      ),
    );
  }

  Widget _buildRadioList(
    BuildContext context,
    dynamic l10n,
    String currentTheme,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: CommonRadioList(
        elements:
            [
                  (ThemeType.system, l10n.sameDevice, l10n.sameDeviceDescr),
                  (ThemeType.light, l10n.light, null),
                  (ThemeType.dark, l10n.dark, null),
                ]
                .map(
                  (theme) => RadioParams(
                    isSelected: currentTheme == theme.$1.name,
                    text: theme.$2,
                    description: theme.$3,
                    inRadioTap: () => context.maybePop(theme.$1),
                    reverse: true,
                  ),
                )
                .toList(),
        paddingSize: 36,
      ),
    );
  }
}
