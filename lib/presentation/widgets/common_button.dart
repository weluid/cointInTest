import 'package:coinin/core/extentions/context_extentions.dart';
import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  const CommonButton.primary({
    super.key,
    required this.onPressed,
    required this.label,
    this.height = 48,
    this.loading = false,
    this.child,
    this.customSize,
    this.textAlign,
    this.border,
  })  : _isOutlined = false,
        textColor = null,
        backgroundColor = null,
        borderColor = null;

  const CommonButton.outLine({
    super.key,
    required this.onPressed,
    required this.label,
    this.height = 48,
    this.loading = false,
    this.borderColor,
    this.child,
    this.customSize,
    this.textAlign,
    this.border,
  })  : _isOutlined = true,
        textColor = null,
        backgroundColor = null;

  const CommonButton.custom({
    super.key,
    required this.onPressed,
    required this.label,
    required this.backgroundColor,
    this.textColor,
    this.height = 48,
    this.loading = false,
    this.borderColor,
    this.customSize,
    this.child,
    this.textAlign,
    this.border,
  }) : _isOutlined = false;

  final VoidCallback? onPressed;
  final String label;
  final double height;
  final bool loading;
  final Size? customSize;
  final Color? backgroundColor;
  final Color? textColor;
  final Color? borderColor;
  final Widget? child;
  final bool _isOutlined;
  final TextAlign? textAlign;
  final OutlinedBorder? border;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final bool isDisabled = onPressed == null;
    return OutlinedButton(
      onPressed: loading ? null : onPressed,
      style: OutlinedButton.styleFrom(
        fixedSize: customSize ?? Size.fromHeight(height),
        surfaceTintColor: Colors.transparent,
        side: borderColor != null
            ? BorderSide(color: borderColor!)
            : _isOutlined
                ? BorderSide(color: colors.primary)
                : null,
        padding: EdgeInsets.zero,
        shadowColor: Colors.transparent,
        shape: border,
        backgroundColor: isDisabled
            ? colors.button.withValues(alpha: 0.38)
            : backgroundColor ?? (_isOutlined ? Colors.transparent : colors.button),
        foregroundColor: _isOutlined ? Colors.transparent : textColor,
      ),
      child: child ??
          Text(
            label,
            style: context.typography.headlineSmall?.copyWith(
              color: _isOutlined ? colors.primary : Colors.white,
            ),
            textAlign: textAlign,
          ),
    );
  }
}
