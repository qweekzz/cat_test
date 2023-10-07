import 'package:auto_route/auto_route.dart';
import 'package:car_test/src/core/app_utils/app_utils.dart';
import 'package:car_test/src/core/ui_kit/app_kit.dart';
import 'package:flutter/material.dart';

@immutable
@RoutePage<void>()
class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => const SafeArea(
        child: Scaffold(
          body: _BodyLayout(),
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
  late final TextEditingController _codeController;

  @override
  void initState() {
    super.initState();
    _phoneController = TextEditingController();
    _codeController = TextEditingController();
  }

  @override
  void dispose() {
    _phoneController.dispose();
    _codeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: Text(
                  'Восстановление аккаунта',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: PrimaryTextField(
              controller: _phoneController,
              labelText: 'Номер телефона',
              keyboardType: TextInputType.phone,
              inputFormatters: [
                RuPhoneInputFormatter(),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Выслать SMS-код'),
          ),
          const SizedBox(height: 8),
          TextButton(
            onPressed: () {},
            child: const Text('Выслать повторно'),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50, bottom: 40),
            child: PrimaryTextField(
              controller: _codeController,
              labelText: 'Код из SMS',
              keyboardType: TextInputType.number,
              inputFormatters: [],
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Далее'),
          ),
        ],
      );
}
