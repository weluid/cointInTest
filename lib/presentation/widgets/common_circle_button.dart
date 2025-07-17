import 'package:coinin/core/extentions/context_extentions.dart';
import 'package:flutter/material.dart';

class CommonCircleButton extends StatelessWidget {
  const CommonCircleButton({
    super.key,
    required this.onTap,
    required this.icon,
  });

  final VoidCallback onTap;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: 32,
      child: IconButton(
        onPressed: onTap,
        padding: EdgeInsets.zero,
        icon: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: context.colors.cardBackground.withValues(alpha: 0.75),
          ),
          padding: const EdgeInsets.all(5),
          child: Center(
            child: icon,
          ),
        ),
      ),
    );
  }
}
