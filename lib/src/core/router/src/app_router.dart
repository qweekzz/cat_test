import 'package:auto_route/auto_route.dart';
import 'package:car_test/src/core/router/router.dart';

export 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends $AppRouter {
  AppRouter();

  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  late final List<AutoRoute> routes = [
    /// SplashScreen
    AdaptiveRoute(
      initial: true,
      page: SplashScreenRoute.page,
      path: '/',
    ),

    /// Страница "Вход в аккаунт"
    AdaptiveRoute(
      page: LoginRoute.page,
      path: '/auth',
      children: [
        /// Таб "Войти"
        AdaptiveRoute(
          page: LoginTab.page,
          path: 'login',
        ),

        /// Таб "Регистрация"
        AdaptiveRoute(
          page: RegisterTab.page,
          path: 'register',
        ),
      ],
    ),

    /// Страница "Восстановление аккаунта"
    AdaptiveRoute(
      page: ResetPasswordRoute.page,
      path: '/reset-password',
    ),

    /// Страница "Восстановление аккаунта"
    AdaptiveRoute(
      page: ProfileRoute.page,
      path: '/profile',
    ),

    /// Переадрисация на страницу '/'
    RedirectRoute(path: '*', redirectTo: '/'),
  ];
}
