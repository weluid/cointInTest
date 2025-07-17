import 'package:coinin/core/extentions/context_extentions.dart';
import 'package:coinin/generated/assets.gen.dart';
import 'package:flutter/material.dart';

class SettingsButton extends StatelessWidget {
  const SettingsButton({super.key, required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    return IconButton(
      onPressed: () {
        onTap.call();
      },
      icon: Assets.icons.homePage.settings.svg(),
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(
          colors.primary.withValues(alpha: 0.1),
        ),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        padding: WidgetStateProperty.all(EdgeInsets.zero),
        fixedSize: WidgetStateProperty.all(Size(40, 40)),
      ),
    );
  }
}
