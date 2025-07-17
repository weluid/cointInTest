import 'package:flutter/material.dart';

abstract class AppColor {
  const AppColor({
    required this.primary,
    required this.text,

    required this.background,
    required this.cardBackground,
    required this.errorColor,
    required this.iconBackground,
    required this.button,
    required this.dividerColor,
    required this.borderColor,
    required this.inactiveColor,
  });

  final Color background;
  final Color primary;
  final Color cardBackground;
  final Color iconBackground;
  final Color text;

  final Color button;
  final Color dividerColor;
  final Color borderColor;
  final Color errorColor;
  final Color inactiveColor;
}

class AppColorLight implements AppColor {
  @override
  Color get primary => const Color.fromRGBO(237, 169, 45, 1);

  @override
  Color get text => const Color.fromRGBO(36, 36, 36, 1);

  @override
  Color get background => const Color.fromRGBO(255, 252, 248, 1);

  @override
  Color get cardBackground => const Color.fromRGBO(242, 233, 218, 1);

  @override
  Color get errorColor => const Color.fromRGBO(250, 112, 112, 1);

  @override
  Color get iconBackground => const Color.fromRGBO(240, 242, 243, 1);

  @override
  Color get button => const Color.fromRGBO(255, 255, 255, 1);

  @override
  Color get dividerColor => const Color.fromRGBO(235, 238, 239, 1);

  @override
  Color get borderColor => const Color.fromRGBO(224, 224, 224, 1);

  @override
  Color get inactiveColor => const Color.fromRGBO(145, 160, 182, 1);
}

class AppColorDark implements AppColor {
  @override
  Color get primary => const Color.fromRGBO(237, 169, 45, 1);

  @override
  Color get text => const Color.fromRGBO(255, 255, 255, 1);

  @override
  Color get background => const Color.fromRGBO(31, 31, 39, 1);

  @override
  Color get cardBackground => const Color.fromRGBO(47, 37, 31, 1);

  @override
  Color get errorColor => const Color.fromRGBO(250, 112, 112, 1);

  @override
  Color get iconBackground => const Color.fromRGBO(55, 55, 55, 1);

  @override
  Color get button => const Color.fromRGBO(44, 44, 52, 1);

  @override
  Color get dividerColor => const Color.fromRGBO(55, 55, 55, 1);

  @override
  Color get borderColor => const Color.fromRGBO(75, 75, 75, 1);

  @override
  Color get inactiveColor => const Color.fromRGBO(155, 155, 155, 1);
}
