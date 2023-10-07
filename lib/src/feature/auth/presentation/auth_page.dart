import 'package:auto_route/auto_route.dart';
import 'package:car_test/src/core/app_utils/app_utils.dart';
import 'package:car_test/src/core/router/router.dart';
import 'package:car_test/src/core/ui_kit/app_kit.dart';
import 'package:car_test/src/feature/auth/bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@immutable
@RoutePage<void>(name: 'LoginTab')
class AuthPage extends StatelessWidget {
  const AuthPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => SafeArea(
        child: Scaffold(
          body: BlocProvider(
            create: (context) => AuthBloc(),
            child: BlocBuilder<AuthBloc, AuthState>(
              builder: (context, state) => state.maybeMap(
                initial: (value) => const _BodyLayout(),
                waitForGetOtp: (value) => const _BodyLayout(),
                authError: (value) => const _BodyLayout(),
                authSuccess: (value) => const _BodyLayout(),
                orElse: CircularProgressIndicator.new,
              ),
            ),
          ),
        ),
      );
}

@immutable
class _BodyLayout extends StatefulWidget {
  const _BodyLayout({
    Key? key,
  }) : super(key: key);

  @override
  State<_BodyLayout> createState() => _BodyLayoutState();
}

class _BodyLayoutState extends State<_BodyLayout> {
  late final TextEditingController _phoneController;
  late final TextEditingController _passwordController;

  @override
  void initState() {
    super.initState();
    _phoneController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _phoneController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state == const AuthState.authSuccess()) {
            context.router.replace(const ProfileRoute());
          }
          state.whenOrNull(
            authError: (error) => ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(error),
              ),
            ),
          );
        },
        builder: (context, state) {
          final isStateGetOtp = state == const AuthState.waitForGetOtp();
          final isInitial = state == const AuthState.initial();
          return Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 64),
                    child: Text(
                      'Вход в аккаунт',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: PrimaryTextField(
                  controller: _phoneController,
                  labelText: 'Номер телефона',
                  keyboardType: TextInputType.phone,
                  inputFormatters: [
                    RuPhoneInputFormatter(),
                  ],
                ),
              ),
              if (!isInitial)
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: PrimaryTextField(
                    controller: _passwordController,
                    labelText: 'Пароль',
                    keyboardType: TextInputType.phone,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(6),
                    ],
                  ),
                ),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(210, 40),
                    maximumSize: const Size(210, 40),
                  ),
                  onPressed: () {
                    if (!isInitial) {
                      BlocProvider.of<AuthBloc>(context).add(
                        AuthEvent.verifyCode(
                          _passwordController.text.trim(),
                        ),
                      );
                    } else {
                      BlocProvider.of<AuthBloc>(context).add(
                        AuthEvent.sendCode(_phoneController.text.trim()),
                      );
                    }
                  },
                  child: Text(
                    isStateGetOtp ? 'Войти' : 'Получить код',
                  ),
                ),
              ),
              const SizedBox(height: 8),
              TextButton(
                style: TextButton.styleFrom(
                  minimumSize: const Size(210, 40),
                  maximumSize: const Size(210, 40),
                ),
                onPressed: () => context.pushRoute(
                  const ResetPasswordRoute(),
                ),
                child: const Text('Забыли пароль?'),
              )
            ],
          );
        },
      );
}
