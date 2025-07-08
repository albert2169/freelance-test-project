import 'package:agro_market/presentation/theme/colors/agro_market_color_palette.dart';
import 'package:agro_market/presentation/theme/colors/agro_market_color_theme.dart';
import 'package:agro_market/presentation/theme/extensions/background_gradient_extension.dart';
import 'package:agro_market/presentation/theme/text/agro_market_text_theme.dart';
import 'package:agro_market/presentation/theme/text/app_fonts.dart';
import 'package:flutter/material.dart';



class AgroMarketTheme {
  static ThemeData get(Brightness mode) {
    final colorTheme = AgroMarketColorTheme.light();
    final textTheme = AgroMarketTextTheme.get(colorTheme: colorTheme);

    return ThemeData(
      useMaterial3: false,
      applyElevationOverlayColor: false,
      splashFactory: NoSplash.splashFactory,
      highlightColor: Colors.transparent,
      scaffoldBackgroundColor: colorTheme.backgroundPrimary,
      primaryColor: colorTheme.primary,
      fontFamily: AppFonts.manropeFontFamily,
   
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: colorTheme.primary,
          textStyle: TextStyle(color: colorTheme.primary),
          backgroundColor: colorTheme.primary,
        ),
      ),
      colorScheme: ColorScheme.fromSeed(
        seedColor: colorTheme.primary,
        primary: colorTheme.primary,
        secondary: colorTheme.secondary,
        brightness: Brightness.light,
        surface: colorTheme.backgroundPrimary,
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return colorTheme.primary;
          }
          return colorTheme.secondary;
        }),
        side: BorderSide(color: colorTheme.foregroundPrimary),
      ),
      navigationBarTheme: NavigationBarThemeData(
        backgroundColor: colorTheme.backgroundPrimary,
        indicatorColor: Colors.transparent,
    
    
      ),
      extensions: <ThemeExtension<dynamic>>[
        colorTheme,
        textTheme,
      ],
      textTheme: TextTheme(
        titleLarge: TextStyle(
          fontSize: 24,
          fontWeight: AppFonts.bold,
          color: colorTheme.foregroundPrimary,
        ),
        titleMedium: TextStyle(
          fontSize: 18,
          fontWeight: AppFonts.bold,
          color: colorTheme.foregroundPrimary,
        ),
        titleSmall: TextStyle(
          fontSize: 16,
          fontWeight: AppFonts.semiBold,
          fontStyle: FontStyle.normal,
          color: colorTheme.foregroundPrimary,
        ),
        bodyLarge: TextStyle(
          fontSize: 16,
          fontWeight: AppFonts.semiBold,
          fontStyle: FontStyle.normal,
          color: colorTheme.foregroundPrimary,
        ),
        bodyMedium: TextStyle(
          fontWeight: AppFonts.medium,
          fontSize: 14,
          fontStyle: FontStyle.normal,
          color: colorTheme.foregroundPrimary,
        ),
        bodySmall: TextStyle(
          fontSize: 12,
          fontWeight: AppFonts.medium,
          fontStyle: FontStyle.normal,
          color: colorTheme.foregroundPrimary,
        ),
        headlineLarge: TextStyle(
          fontSize: 24,
          fontWeight: AppFonts.semiBold,
          fontStyle: FontStyle.normal,
          color: colorTheme.foregroundPrimary,
        ),
      ),
    );
  }
}
