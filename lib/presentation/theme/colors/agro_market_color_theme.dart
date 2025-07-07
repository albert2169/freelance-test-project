import 'package:agro_market/presentation/theme/colors/agro_market_color.dart';
import 'package:agro_market/presentation/theme/colors/agro_market_color_palette.dart';
import 'package:agro_market/presentation/theme/colors/agro_market_color_theme_extension.dart';
import 'package:flutter/material.dart';

abstract class AgroMarketColorTheme {
  static AgroMarketColorThemeExtension light() {
    return AgroMarketColorThemeExtension(
      barChartColor: AgroMarketColor(AgroMarketColorPalette.primaryTextDarkColor.value),
      brightness: Brightness.light,
      primary: AgroMarketColor(AgroMarketColorPalette.primaryTextDarkColor.value),
      secondary: AgroMarketColor(AgroMarketColorPalette.primaryTextDarkColor.value),
      tertiary: AgroMarketColor(AgroMarketColorPalette.primaryTextDarkColor.value),
      foregroundPrimary: AgroMarketColor(AgroMarketColorPalette.primaryTextDarkColor.value),
      foregroundSecondary: AgroMarketColor(AgroMarketColorPalette.primaryTextDarkColor.value),
      foregroundTertiary: AgroMarketColor(AgroMarketColorPalette.primaryTextDarkColor.value),
      backgroundPrimary: AgroMarketColor(AgroMarketColorPalette.primaryTextDarkColor.value),
      backgroundSecondary: AgroMarketColor(AgroMarketColorPalette.primaryTextDarkColor.value),
      backgroundTertiary: AgroMarketColor(AgroMarketColorPalette.primaryTextDarkColor.value),
    );
  }



  static AgroMarketColorThemeExtension of(BuildContext context) {
    final colorTheme = Theme.of(context).extension<AgroMarketColorThemeExtension>();

    if (colorTheme == null) return light();

    return colorTheme;
  }
}
