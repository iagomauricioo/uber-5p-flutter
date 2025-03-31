import 'dart:ui';

import 'CustomTheme.dart';

import 'package:flutter/material.dart';

class CustomTextStyle {
  static const TextStyle titleSmall = TextStyle(
    fontFamily: 'Inter Tight',
    fontSize: 14,
    color: CustomTheme.primaryText,
    letterSpacing: 0.0,
  );

  static const TextStyle bodyMedium = TextStyle(
    fontFamily: 'Inter',
    fontSize: 18,
    color: CustomTheme.primaryText,
    letterSpacing: 0.0,
  );

  static const TextStyle button = TextStyle(
    fontFamily: 'Inter Tight',
    fontSize: 14,
    color: Color(0xFF8C8F94),
    letterSpacing: 0.0,
  );
}

