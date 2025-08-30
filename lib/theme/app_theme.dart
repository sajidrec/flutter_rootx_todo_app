import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTheme {
  static ThemeData getThemeData = ThemeData(
    scaffoldBackgroundColor: AppColors.primaryDark,
    appBarTheme: AppBarTheme(backgroundColor: AppColors.primaryWhite),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.primaryDark.withAlpha(20),

      // subtle dark fill
      hintStyle: TextStyle(
        color: AppColors.primaryWhite.withAlpha(180),
        // semi-transparent white
        fontSize: 14,
      ),
      labelStyle: TextStyle(
        color: AppColors.primaryOrange,
        fontWeight: FontWeight.w600,
      ),

      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(
          color: AppColors.primaryWhite.withAlpha(150),
          width: 1.5,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: AppColors.primaryOrange, width: 2),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(
          color: AppColors.primaryOrange.withAlpha(200),
          // using primaryOrange for errors
          width: 1.5,
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: AppColors.primaryOrange, width: 2),
      ),
    ),
  );
}
