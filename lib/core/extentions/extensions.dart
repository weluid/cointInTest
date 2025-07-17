import 'package:coinin/core/extentions/context_extentions.dart';
import 'package:flutter/material.dart';

class Extensions {}

extension StringCasingExtension on String {
  String capitalized() => length > 0 ? '${this[0].toUpperCase()}${substring(1).toLowerCase()}' : '';
}

extension WidgetExtention on Widget {
  void showBottomSheet({
    required BuildContext context,
    Color? backgroundColor,
    double? radius,
    double? height,
    Color? barrierColor,
    isDismissible = true,
    isScrollControlled = true,
  }) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(radius ?? 16),
        ),
      ),
      constraints: BoxConstraints(
        maxHeight: height ?? MediaQuery.sizeOf(context).height * 0.66,
      ),
      isScrollControlled: isScrollControlled,
      backgroundColor: context.colors.background,
      enableDrag: false,
      isDismissible: isDismissible,
      elevation: 0,
      builder: (context) => this,
    );
  }
}
