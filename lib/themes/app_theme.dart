import 'package:flutter/material.dart';

import '../project_name.dart';

final theme = ThemeData(
  /// App
  useMaterial3: false,
  colorSchemeSeed: AppColor.primary,
  splashColor: Colors.transparent,
  highlightColor: Colors.transparent,

  /// Custom
  scaffoldBackgroundColor: AppColor.white,
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed,
    elevation: 0,
    backgroundColor: AppColor.white,
    selectedItemColor: AppColor.primary,
    selectedLabelStyle: const AppTypography.caption1(
      color: AppColor.primary,
    ).medium,
    unselectedItemColor: AppColor.gray400,
    unselectedLabelStyle: const AppTypography.caption1(
      color: AppColor.gray400,
    ).medium,
  ),
);
