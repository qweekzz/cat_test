import 'dart:ui' show Color;

import 'package:meta/meta.dart';

/// Интерфейс цветов
@immutable
abstract class IAppColors {
  /// Серый 80
  Color get gray80;

  /// Серый 60
  Color get gray60;

  /// Серый 40
  Color get gray40;

  /// Серый 20
  Color get gray20;

  /// Белый
  Color get background;

  /// Красный
  Color get active;

  /// Черный
  Color get text;
}

/// Базовый клас цветов
@immutable
class AppColorsBase implements IAppColors {
  @override
  Color get gray80 => const Color(0xFF505050);

  @override
  Color get gray60 => const Color(0xFF7c7c7c);

  @override
  Color get gray40 => const Color(0xFFa7a7a7);

  @override
  Color get gray20 => const Color(0xFFd3d3d3);

  @override
  Color get background => const Color(0xFFffffff);

  @override
  Color get active => const Color(0xFFce1f2c);

  @override
  Color get text => const Color(0xFF1e1e1e);

  const AppColorsBase();
}
