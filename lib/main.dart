import 'package:car_test/firebase_options.dart';
import 'package:car_test/src/core/app_theme/app_theme.dart';
import 'package:car_test/src/core/extension/extensions.dart';
import 'package:car_test/src/core/router/router.dart';
import 'package:car_test/src/feature/app_theme/presentation/app_theme_scope.dart';
import 'package:car_test/src/feature/auth/bloc/auth_bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  // final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (context) => AuthBloc(),
        ),
      ],
      child: ProviderScope(
        child: AppThemeScope(
          child: App(),
        ),
      ),
    ),
  );
}

class App extends StatelessWidget {
  App({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) => MaterialApp.router(
        theme: AppThemeBase(
          brightness: Brightness.light,
          colors: context.theme.colors,
        ).data,
        routerConfig: _appRouter.config(),
      );
}
