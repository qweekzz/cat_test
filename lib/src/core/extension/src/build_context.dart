import 'package:car_test/src/core/app_theme/app_theme.dart';
import 'package:car_test/src/feature/app_theme/presentation/app_theme_scope.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

extension BuildContextX on BuildContext {
  /// MediaQuery extension
  MediaQueryData get mediaQuery => MediaQuery.of(this);

  /// Screen Size
  Size get screenSize => mediaQuery.size;

  /// Provider Container extension
  ProviderContainer get container => ProviderScope.containerOf(this);

  ProviderContainer get containerRead =>
      ProviderScope.containerOf(this, listen: false);

  /// Theme Extension
  IAppTheme get theme => AppThemeScope.readOf(this);
}
