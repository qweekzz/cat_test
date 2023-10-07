import 'package:car_test/src/core/app_theme/app_theme.dart';
import 'package:car_test/src/core/app_theme/src/app_theme/app_theme_light.dart';
import 'package:car_test/src/core/extension/extensions.dart';
import 'package:car_test/src/feature/app_theme/di/app_theme_di.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@immutable
class AppThemeScope extends StatelessWidget {
  final Widget child;

  const AppThemeScope({
    required this.child,
    Key? key,
  }) : super(key: key);

  static IAppTheme readOf(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context.container.read(AppThemeDI.theme);
    }
    return context.containerRead.read(AppThemeDI.theme);
  }

  // static void toggleThemeOf(BuildContext context) =>
  //     context.container.read(AppThemeDI.bloc).add(const AppThemeEvent.toggle());

  @override
  Widget build(BuildContext context) => ProviderScope(
        overrides: [
          AppThemeDI.theme.overrideWithValue(
            AppThemeLight(),
          ),
        ],
        child: child,
      );
}
