import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  static Color primary = const Color(0xFF1B72C0);
  static Color primaryContainer = const Color(0xFFD3E4FF);
  static Color onPrimaryContainer = const Color(0xFF001C38);
  static Color primarySurface = const Color(0xFFF3F4F9);
  static Color secondarySurface = const Color(0xFFEFF1F8);
  static Color background = const Color(0xFFFCFCFF);
  static Color onSurface20 = const Color(0xFF001E2F);
  static Color onSurface40 = const Color(0xFF44474E);
  static Color onSurface60 = const Color(0xFF74777F);
  static Color text = const Color(0xFF1B1C1F);

  static ColorFilter iconFilter = ColorFilter.mode(
    AppColors.onSurface20,
    BlendMode.srcIn,
  );

  static ColorFilter settingsIconFilter = ColorFilter.mode(
    AppColors.primary,
    BlendMode.srcIn,
  );
}
