import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTheme {
  static ThemeData getThemeData = ThemeData(
    scaffoldBackgroundColor: AppColors.primaryDark,
    appBarTheme: AppBarTheme(backgroundColor: AppColors.primaryWhite),
  );
}
