import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

@immutable
class CustomAnnotatedRegion extends StatelessWidget {
  final Widget child;
  const CustomAnnotatedRegion({
    required this.child,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => AnnotatedRegion(
        value: const SystemUiOverlayStyle(
          statusBarBrightness: Brightness.light,
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.light,
        ),
        child: child,
      );
}
