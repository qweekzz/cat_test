// ignore_for_file: always_use_package_imports, library_prefixes

import 'package:car_test/src/core/app_theme/app_theme.dart'
    show AppCustomColorsDark, AppThemeBase;
import 'package:car_test/src/core/app_theme/src/app_colors/app_colors_light.dart'
    show AppColorsLight;
import 'package:flutter/material.dart';

@immutable
class AppThemeLight extends AppThemeBase {
  AppThemeLight()
      : super(
          brightness: Brightness.light,
          colors: const AppColorsLight(),
        );
}
