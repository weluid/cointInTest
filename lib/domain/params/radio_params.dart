import 'package:flutter/material.dart';

class RadioParams {
  RadioParams({
    required this.isSelected,
    required this.text,
    this.description,
    this.reverse = false,
    required this.inRadioTap,
  });

  bool isSelected;
  final String text;
  final String? description;
  final bool reverse;
  final VoidCallback inRadioTap;
}
