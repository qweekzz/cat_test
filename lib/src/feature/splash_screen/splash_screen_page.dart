import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:car_test/src/core/router/router.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

@immutable
@RoutePage<void>()
class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({
    Key? key,
  }) : super(key: key);

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      context.router.navigate(const LoginRoute());
    });
  }

  @override
  Widget build(BuildContext context) => const Scaffold(
        backgroundColor: Color.fromRGBO(206, 31, 44, 1),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox.square(
                  dimension: 255,
                  child: RiveAnimation.asset('assets/logo_animated.riv'),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 12),
              child: Center(
                child: Text(
                  'AutomApp',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      );
}
