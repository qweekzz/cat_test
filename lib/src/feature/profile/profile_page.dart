import 'package:auto_route/auto_route.dart';
import 'package:car_test/src/core/router/router.dart';
import 'package:car_test/src/feature/auth/data/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

@immutable
@RoutePage<void>()
class ProfilePage extends StatelessWidget {
  const ProfilePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => SafeArea(
        child: Scaffold(
          body: Center(
            child: ElevatedButton(
              onPressed: () => _onTap(context),
              child: const Text('Выйти'),
            ),
          ),
        ),
      );

  Future<void> _onTap(BuildContext context) async {
    await FirebaseAuthRepo().signOut();
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isAuthenticated', false);
    if (context.mounted) {
      await context.replaceRoute(const LoginRoute());
    }
  }
}
