import 'package:car_test/src/core/app_theme/app_theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class AppThemeDI {
  static final theme = Provider.autoDispose<IAppTheme>(
    (ref) => throw UnimplementedError(),
  );
}
