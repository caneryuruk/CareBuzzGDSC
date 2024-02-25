import 'package:flutter/material.dart';
import '../../core/app_export.dart';

String _appTheme = "primary";

/// Helper class for managing themes and colors.
class ThemeHelper {
  // A map of custom color themes supported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Changes the app theme to [_newTheme].
  void changeTheme(String _newTheme) {
    _appTheme = _newTheme;
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: colorScheme.onErrorContainer.withOpacity(1),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(28.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: BorderSide(
            color: appTheme.gray200,
            width: 1.h,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(28.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateColor.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return colorScheme.onErrorContainer.withOpacity(1);
          }
          return colorScheme.onSurface;
        }),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateColor.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return colorScheme.onErrorContainer.withOpacity(1);
          }
          return colorScheme.onSurface;
        }),
        side: BorderSide(
          width: 1,
        ),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: appTheme.gray20001,
      ),
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: appTheme.black900,
          fontSize: 16.fSize,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w300,
        ),
        bodyMedium: TextStyle(
          color: appTheme.black900,
          fontSize: 14.fSize,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: appTheme.gray90002,
          fontSize: 10.fSize,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400,
        ),
        displayMedium: TextStyle(
          color: colorScheme.onErrorContainer.withOpacity(1),
          fontSize: 50.fSize,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w700,
        ),
        headlineLarge: TextStyle(
          color: colorScheme.onErrorContainer.withOpacity(1),
          fontSize: 30.fSize,
          fontFamily: 'Karla',
          fontWeight: FontWeight.w500,
        ),
        headlineMedium: TextStyle(
          color: appTheme.black900,
          fontSize: 28.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
        headlineSmall: TextStyle(
          color: Color(0XFFFFFFFF),
          fontSize: 24.fSize,
          fontFamily: 'Karla',
          fontWeight: FontWeight.w700,
        ),
        labelLarge: TextStyle(
          color: appTheme.black900,
          fontSize: 12.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        ),
        labelMedium: TextStyle(
          color: Color(0XFF000000),
          fontSize: 10.fSize,
          fontFamily: 'Karla',
          fontWeight: FontWeight.w500,
        ),
        titleLarge: TextStyle(
          color: appTheme.black900,
          fontSize: 22.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
        titleMedium: TextStyle(
          color: appTheme.black900,
          fontSize: 18.fSize,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w500,
        ),
        titleSmall: TextStyle(
          color: appTheme.blueGray900,
          fontSize: 15.fSize,
          fontFamily: 'SF UI  Text',
          fontWeight: FontWeight.w500,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light(
    // Primary colors
    primary: Color(0XFF4590C0),
    primaryContainer: Color(0XFF232323),
    secondaryContainer: Color(0X754590C0),

    // Error colors
    errorContainer: Color(0XFF145E8F),
    onError: Color(0XFF00B383),
    onErrorContainer: Color(0XB2FFFFFF),

    // On colors(text colors)
    onPrimary: Color(0XFF101522),
    onPrimaryContainer: Color(0XFFCED3DE),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Black
  Color get black900 => Color(0XFF000000);

  // Blue
  Color get blue100 => Color(0XFFC7DDFF);
  Color get blue50 => Color(0XFFE3EEFF);
  Color get blue5001 => Color(0XFFE2EFFB);
  Color get blue700 => Color(0XFF3587BC);
  Color get blueA400 => Color(0XFF1573FE);

  // BlueGray
  Color get blueGray100 => Color(0XFFD9D9D9);
  Color get blueGray10001 => Color(0XFFD3D6DA);
  Color get blueGray300 => Color(0XFFA0A7B0);
  Color get blueGray30001 => Color(0XFF8F9BB3);
  Color get blueGray50 => Color(0XFFEDF1F7);
  Color get blueGray800 => Color(0XFF3B4353);
  Color get blueGray900 => Color(0XFF222B45);

  // DeepPurple
  Color get deepPurpleA200 => Color(0XFF735BF2);

  // Gray
  Color get gray100 => Color(0XFFF4F5F7);
  Color get gray10001 => Color(0XFFF1F5F6);
  Color get gray10002 => Color(0XFFF5F5F5);
  Color get gray200 => Color(0XFFE5E7EB);
  Color get gray20001 => Color(0XFFEEEEEE);
  Color get gray50 => Color(0XFFF3F8FF);
  Color get gray500 => Color(0XFF9E9E9E);
  Color get gray5001 => Color(0XFFF8F9FA);
  Color get gray5002 => Color(0XFFF4F7FF);
  Color get gray5003 => Color(0XFFF9F9FB);
  Color get gray5004 => Color(0XFFF5F7FF);
  Color get gray5005 => Color(0XFFF9FAFB);
  Color get gray600 => Color(0XFF707684);
  Color get gray800 => Color(0XFF3C3C43);
  Color get gray900 => Color(0XFF10152C);
  Color get gray90001 => Color(0XFF131A34);
  Color get gray90002 => Color(0XFF212121);

  // Grayd
  Color get gray3003d => Color(0X3DE2E2E2);

  // GrayEd
  Color get gray50Ed => Color(0XEDFAFAFA);

  // Green
  Color get greenA700 => Color(0XFF02C02C);

  // LightBlue
  Color get lightBlueA700 => Color(0XFF0095FF);

  // Red
  Color get red500 => Color(0XFFEA4335);

  // Teal
  Color get teal900 => Color(0XFF00395E);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();
