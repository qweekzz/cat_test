// ignore_for_file: always_use_package_imports
import 'package:car_test/src/core/app_theme/src/app_colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

@immutable
abstract class IAppTheme {
  /// Material Theme Data
  ThemeData get data;

  /// Цвета
  ///
  /// См. также [IAppColors]
  IAppColors get colors;

  /// Стиль текста
  TextTheme get textTheme;

  /// Тени
  List<BoxShadow> get shadowsOnlyLight;

  /// Tool Bar Color
  SystemUiOverlayStyle get systemUiOverlayStyleLight;
}

@immutable
class AppThemeBase implements IAppTheme {
  /// Светлая/темная тема
  final Brightness brightness;

  /// Статические цвета
  @override
  final IAppColors colors;

  /// Стиль текста
  @override
  TextTheme get textTheme => data.textTheme;

  /// Light Tool Bar
  @override
  SystemUiOverlayStyle get systemUiOverlayStyleLight =>
      const SystemUiOverlayStyle(
        statusBarBrightness: Brightness.dark,
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
      );

  /// Material Theme Data
  @override
  ThemeData get data => ThemeData(
        useMaterial3: true,
        textTheme: _textTheme,
        scaffoldBackgroundColor: colors.background,
        appBarTheme: _appBarTheme,
        elevatedButtonTheme: _elevatedButtonThemeData,
        outlinedButtonTheme: _outlinedButtonThemeData,
        textButtonTheme: _textButtonThemeData,
        tabBarTheme: _tabBarThemeData,
        bottomNavigationBarTheme: _bottomNavigationBarThemeData,
        iconButtonTheme: _iconButtonThemeData,
        checkboxTheme: _checkboxThemeData,
        switchTheme: _switchThemeData,
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      );

  /// Тени
  @override
  List<BoxShadow> get shadowsOnlyLight => [
        const BoxShadow(
          offset: Offset(0, 4),
          color: Color.fromRGBO(0, 83, 36, 0.08),
          blurRadius: 8,
        ),
      ];

  /// AppBar Theme
  AppBarTheme get _appBarTheme => AppBarTheme(
        titleTextStyle: _textTheme.headlineSmall?.copyWith(
          color: Colors.black,
        ),
        toolbarHeight: 56,
        scrolledUnderElevation: 0,
        elevation: 1,
        centerTitle: true,
        backgroundColor: colors.background,
      );

  /// Text Style
  TextTheme get _textTheme => GoogleFonts.robotoTextTheme(
        const TextTheme(
          /// H1
          titleLarge: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w400,
            height: 1.18,
            letterSpacing: 0.1,
            color: Colors.black,
            inherit: false,
            textBaseline: TextBaseline.alphabetic,
            leadingDistribution: TextLeadingDistribution.even,
          ),

          /// H2
          titleMedium: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w400,
            height: 1.22,
            letterSpacing: 0.1,
            color: Colors.black,
            inherit: false,
            textBaseline: TextBaseline.alphabetic,
            leadingDistribution: TextLeadingDistribution.even,
          ),

          /// Body Bold
          bodyLarge: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w700,
            height: 1.5,
            letterSpacing: 0.1,
            color: Colors.black,
            inherit: false,
            textBaseline: TextBaseline.alphabetic,
            leadingDistribution: TextLeadingDistribution.even,
          ),

          /// Body
          bodyMedium: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            height: 1.5,
            letterSpacing: 0.1,
            color: Colors.black,
            inherit: false,
            textBaseline: TextBaseline.alphabetic,
            leadingDistribution: TextLeadingDistribution.even,
          ),

          /// Tab
          bodySmall: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            height: 1.17,
            letterSpacing: 0.1,
            color: Colors.black,
            inherit: false,
            textBaseline: TextBaseline.alphabetic,
            leadingDistribution: TextLeadingDistribution.even,
          ),

          /// Button
          labelLarge: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            height: 1.7,
            letterSpacing: 0.1,
            color: Colors.black,
            inherit: false,
            textBaseline: TextBaseline.alphabetic,
            leadingDistribution: TextLeadingDistribution.even,
          ),

          /// Field
          labelMedium: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            height: 1.5,
            letterSpacing: 0.1,
            color: Colors.black,
            inherit: false,
            textBaseline: TextBaseline.alphabetic,
            leadingDistribution: TextLeadingDistribution.even,
          ),

          /// Label
          labelSmall: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            height: 1.5,
            letterSpacing: 0.1,
            color: Colors.black,
            inherit: false,
            textBaseline: TextBaseline.alphabetic,
            leadingDistribution: TextLeadingDistribution.even,
          ),
        ),
      );

  /// Button style
  ElevatedButtonThemeData get _elevatedButtonThemeData =>
      ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          textStyle: _textTheme.labelLarge?.copyWith(
            color: Colors.black,
            inherit: false,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
          backgroundColor: colors.active,
          foregroundColor: colors.background,
          minimumSize: const Size(210, 40),
          maximumSize: const Size(210, 40),
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 18),
        ).copyWith(elevation: ButtonStyleButton.allOrNull(0)),
      );

  /// Outlined button style (not configured)
  OutlinedButtonThemeData get _outlinedButtonThemeData =>
      OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          textStyle: _textTheme.labelLarge,
          foregroundColor: colors.active,
          backgroundColor: colors.background,
          minimumSize: const Size.fromHeight(48),
          maximumSize: const Size.fromHeight(48),
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 13),
        ).copyWith(elevation: ButtonStyleButton.allOrNull(0)),
      );

  /// Text button style
  TextButtonThemeData get _textButtonThemeData => TextButtonThemeData(
        style: TextButton.styleFrom(
          textStyle: _textTheme.labelLarge,
          foregroundColor: colors.active,
          backgroundColor: colors.background,
          minimumSize: const Size(210, 40),
          maximumSize: const Size(210, 40),
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        ).copyWith(elevation: ButtonStyleButton.allOrNull(0)),
      );

  /// Icon button style (not configured)
  IconButtonThemeData get _iconButtonThemeData => IconButtonThemeData(
        style: IconButton.styleFrom(
          foregroundColor: colors.active,
          backgroundColor: Colors.transparent,
          minimumSize: const Size.square(40),
          maximumSize: const Size.square(40),
          padding: const EdgeInsets.all(8),
          iconSize: 24,
        ).copyWith(elevation: ButtonStyleButton.allOrNull(0)),
      );

  /// Tab bar style (not configured)
  TabBarTheme get _tabBarThemeData => TabBarTheme(
        indicator: UnderlineTabIndicator(
          borderSide: BorderSide(
            color: colors.active,
            width: 2,
          ),
        ),
        indicatorSize: TabBarIndicatorSize.tab,
        dividerColor: colors.gray40,
        labelColor: colors.active,
        labelPadding: EdgeInsets.zero,
        labelStyle: _textTheme.bodySmall,
        unselectedLabelColor: colors.gray60,
        unselectedLabelStyle: _textTheme.bodySmall,
        overlayColor: const MaterialStatePropertyAll(Colors.transparent),
      );

  /// Bottom navigation bar style (not configured)
  BottomNavigationBarThemeData get _bottomNavigationBarThemeData =>
      BottomNavigationBarThemeData(
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: colors.background,
        selectedIconTheme: IconThemeData(
          color: colors.active,
        ),
        unselectedIconTheme: IconThemeData(
          color: colors.gray60,
        ),
        selectedLabelStyle: _textTheme.bodySmall?.copyWith(
          color: colors.active,
        ),
        unselectedLabelStyle: _textTheme.bodySmall?.copyWith(
          color: colors.gray60,
        ),
      );

  /// Checkbox style (not configured)
  CheckboxThemeData get _checkboxThemeData => CheckboxThemeData(
        fillColor: MaterialStateProperty.resolveWith(
          (states) => states.contains(MaterialState.selected)
              ? colors.active
              : colors.background,
        ),
        checkColor: MaterialStateProperty.all(colors.background),
        splashRadius: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(2),
        ),
        side: MaterialStateBorderSide.resolveWith(
          (states) => BorderSide(
            color: states.contains(MaterialState.selected)
                ? colors.active
                : colors.background,
            width: 2,
          ),
        ),
      );

  /// Switch style (not configured)
  SwitchThemeData get _switchThemeData => SwitchThemeData(
        thumbColor: MaterialStateProperty.resolveWith(
          (states) => states.contains(MaterialState.selected)
              ? colors.active
              : colors.gray60,
        ),
        trackColor: MaterialStateProperty.resolveWith(
          (states) => states.contains(MaterialState.selected)
              ? colors.active
              : colors.gray60,
        ),
        splashRadius: 0,
      );

  /// App theme base
  const AppThemeBase({
    required this.brightness,
    required this.colors,
  });
}
