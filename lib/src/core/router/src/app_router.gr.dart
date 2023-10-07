// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:car_test/src/feature/auth/presentation/auth_page.dart' as _i1;
import 'package:car_test/src/feature/auth/presentation/login_page.dart' as _i2;
import 'package:car_test/src/feature/auth/presentation/register_page.dart'
    as _i4;
import 'package:car_test/src/feature/profile/profile_page.dart' as _i3;
import 'package:car_test/src/feature/reset_password/reset_password_page.dart'
    as _i5;
import 'package:car_test/src/feature/splash_screen/splash_screen_page.dart'
    as _i6;

abstract class $AppRouter extends _i7.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    LoginTab.name: (routeData) {
      return _i7.AutoRoutePage<void>(
        routeData: routeData,
        child: const _i1.AuthPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i7.AutoRoutePage<void>(
        routeData: routeData,
        child: const _i2.LoginPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i7.AutoRoutePage<void>(
        routeData: routeData,
        child: const _i3.ProfilePage(),
      );
    },
    RegisterTab.name: (routeData) {
      return _i7.AutoRoutePage<void>(
        routeData: routeData,
        child: const _i4.RegisterPage(),
      );
    },
    ResetPasswordRoute.name: (routeData) {
      return _i7.AutoRoutePage<void>(
        routeData: routeData,
        child: const _i5.ResetPasswordPage(),
      );
    },
    SplashScreenRoute.name: (routeData) {
      return _i7.AutoRoutePage<void>(
        routeData: routeData,
        child: const _i6.SplashScreenPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AuthPage]
class LoginTab extends _i7.PageRouteInfo<void> {
  const LoginTab({List<_i7.PageRouteInfo>? children})
      : super(
          LoginTab.name,
          initialChildren: children,
        );

  static const String name = 'LoginTab';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i2.LoginPage]
class LoginRoute extends _i7.PageRouteInfo<void> {
  const LoginRoute({List<_i7.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i3.ProfilePage]
class ProfileRoute extends _i7.PageRouteInfo<void> {
  const ProfileRoute({List<_i7.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i4.RegisterPage]
class RegisterTab extends _i7.PageRouteInfo<void> {
  const RegisterTab({List<_i7.PageRouteInfo>? children})
      : super(
          RegisterTab.name,
          initialChildren: children,
        );

  static const String name = 'RegisterTab';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i5.ResetPasswordPage]
class ResetPasswordRoute extends _i7.PageRouteInfo<void> {
  const ResetPasswordRoute({List<_i7.PageRouteInfo>? children})
      : super(
          ResetPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ResetPasswordRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i6.SplashScreenPage]
class SplashScreenRoute extends _i7.PageRouteInfo<void> {
  const SplashScreenRoute({List<_i7.PageRouteInfo>? children})
      : super(
          SplashScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashScreenRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}
