import 'package:coinin/core/theme/colors.dart';
import 'package:coinin/generated/fonts.gen.dart';
import 'package:flutter/material.dart';

class ThemeLight {
  static final AppColor _colors = AppColorLight();

  static ThemeData light = ThemeData(
    brightness: Brightness.light,
    textTheme: _textTheme(),
    outlinedButtonTheme: _outLinedButtonTheme(),
    inputDecorationTheme: _inputDecorationTheme(),
    scaffoldBackgroundColor: _colors.background,
    dividerColor: _colors.dividerColor,
    bottomNavigationBarTheme: _bottomNavigationBarTheme(),
    cardTheme: _cardTheme(),
    dividerTheme: _dividerTheme(),
  );

  static DividerThemeData _dividerTheme() {
    return DividerThemeData(
      color: _colors.borderColor,
      indent: 0,
      endIndent: 0,
      thickness: 1,
    );
  }

  static CardThemeData _cardTheme() {
    return const CardThemeData(
      elevation: 0,
      margin: EdgeInsets.zero,
      color: Colors.transparent,
    );
  }

  static BottomNavigationBarThemeData _bottomNavigationBarTheme() {
    return BottomNavigationBarThemeData(
      selectedItemColor: _colors.primary,
      unselectedItemColor: _colors.inactiveColor,
      backgroundColor: Colors.white,
      elevation: 6,
    );
  }

  static OutlinedButtonThemeData _outLinedButtonTheme() {
    return OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        backgroundColor: _colors.primary,
        disabledBackgroundColor: _colors.primary.withValues(alpha: 0.38),
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        side: const BorderSide(color: Colors.transparent),
        textStyle: const TextStyle(
          fontSize: 18,
          fontFamily: FontFamily.poppins,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),
    );
  }

  static TextTheme _textTheme() {
    return TextTheme(
      headlineLarge: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: _colors.text,
      ),
      headlineMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: _colors.text,
      ),

      titleLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: _colors.text,
      ),

      titleSmall: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: _colors.text,
      ),
      bodyMedium: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: _colors.text,
      ),
    ).apply(fontFamily: FontFamily.poppins);
  }

  static InputDecorationTheme _inputDecorationTheme() {
    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: _colors.borderColor),
    );
    return InputDecorationTheme(
      hintStyle: TextStyle(
        fontSize: 14,
        fontFamily: FontFamily.poppins,
        fontWeight: FontWeight.w400,
        color: _colors.text,
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16),
      outlineBorder: null,
      activeIndicatorBorder: null,
      border: border,
      enabledBorder: border,
      disabledBorder: border,
      focusedBorder: border,
      errorBorder: border,
    );
  }
}
