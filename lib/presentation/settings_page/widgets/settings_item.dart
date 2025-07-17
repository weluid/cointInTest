import 'package:coinin/core/extentions/context_extentions.dart';
import 'package:flutter/material.dart';

class SettingsItem extends StatelessWidget {
  const SettingsItem({
    super.key,
    required this.title,
    this.description,
    this.image,
    required this.onTap,
    this.boxDecoration,
    this.subtitle,
  });

  final String title;
  final String? description;
  final String? subtitle;
  final Widget? image;
  final VoidCallback onTap;
  final BoxDecoration? boxDecoration;

  @override
  Widget build(BuildContext context) {
    final typography = context.typography;
    final colors = context.colors;
    return InkWell(
      onTap: onTap,
      child: DecoratedBox(
        decoration: boxDecoration ?? const BoxDecoration(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              image ?? const SizedBox(),
              Text(title, style: typography.headlineMedium),
              const Spacer(),
              if (description != null)
                Text(
                  description!,
                  style: typography.headlineMedium?.copyWith(
                    color: colors.inactiveColor,
                  ),
                ),
              const SizedBox(width: 20),
              Icon(Icons.chevron_right),
            ],
          ),
        ),
      ),
    );
  }
}
