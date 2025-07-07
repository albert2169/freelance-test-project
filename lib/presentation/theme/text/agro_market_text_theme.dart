import 'package:agro_market/presentation/theme/colors/agro_market_color_palette.dart';
import 'package:agro_market/presentation/theme/colors/agro_market_color_theme_extension.dart';
import 'package:agro_market/presentation/theme/text/agro_market_theme_extension.dart';
import 'package:agro_market/presentation/theme/text/app_fonts.dart';
import 'package:flutter/material.dart';

abstract class AgroMarketTextTheme {
  static AgroMarketThemeExtension get({
    required AgroMarketColorThemeExtension colorTheme,
  }) {
    return AgroMarketThemeExtension(
      introTitleTextStyle: TextStyle(
        fontFamily: AppFonts.manropeFontFamily,
        fontWeight: AppFonts.semiBold,
        color: AgroMarketColorPalette.primaryTextDarkColor,
        fontSize: 24,
      ),
      introBodyTextStyle: TextStyle(
        fontFamily: AppFonts.poppinsFontFamily,
        fontWeight: AppFonts.medium,
        color: AgroMarketColorPalette.primaryTextDarkColor,
        fontSize: 15,
      ),
      primaryButtonTextStyle: TextStyle(
        fontFamily: AppFonts.manropeFontFamily,
        fontWeight: AppFonts.bold,
        color: AgroMarketColorPalette.white,
        fontSize: 16,
      ),
    );
  }
}
