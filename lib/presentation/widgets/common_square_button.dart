import 'package:coinin/core/extentions/context_extentions.dart';
import 'package:flutter/material.dart';

class CommonSquareButton extends StatelessWidget {
  const CommonSquareButton({
    super.key,
    required this.onTap,
    required this.icon,
  });

  final VoidCallback onTap;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    return IconButton(
      onPressed: () {
        onTap.call();
      },
      icon: icon,
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
