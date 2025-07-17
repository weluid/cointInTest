import 'package:coinin/core/theme/colors.dart';
import 'package:coinin/generated/l10n.dart';
import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  S get l10n => S.of(this);

  TextTheme get typography => Theme.of(this).textTheme;

  AppColor get colors => Theme.of(this).brightness == Brightness.dark
      ? AppColorLight()
      : AppColorLight();

  LinearGradient get commonBackgroundGradient =>
      Theme.of(this).brightness == Brightness.dark
      ? LinearGradient(
          colors: [

            Color.fromRGBO(255, 244, 223, 1),
            Color.fromRGBO(255, 255, 255, 1),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        )
      : LinearGradient(
          colors: [

            Color.fromRGBO(255, 244, 223, 1),
            Color.fromRGBO(255, 255, 255, 1),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        );

  LinearGradient get bannerGradient =>
      Theme.of(this).brightness == Brightness.dark
          ? LinearGradient(
        colors: [

          Color.fromRGBO(168, 108, 29, 1),
          Color.fromRGBO(90, 58, 20, 1),
        ],
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
      )
          : LinearGradient(
        colors: [

          Color.fromRGBO(255, 211, 130, 1),
          Color.fromRGBO(255, 229, 183, 1),
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      );
}
