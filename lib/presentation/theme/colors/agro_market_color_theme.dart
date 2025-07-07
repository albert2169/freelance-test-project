import 'package:agro_market/presentation/theme/colors/agro_market_color.dart';
import 'package:agro_market/presentation/theme/colors/agro_market_color_palette.dart';
import 'package:agro_market/presentation/theme/colors/agro_market_color_theme_extension.dart';
import 'package:flutter/material.dart';

abstract class AgroMarketColorTheme {
  static AgroMarketColorThemeExtension light() {
    return AgroMarketColorThemeExtension(
      barChartColor: AgroMarketColor(AgroMarketColorPalette.primaryLightColor2.value),
      brightness: Brightness.light,
      primary: AgroMarketColor(AgroMarketColorPalette.darkGreen.value),
      secondary: AgroMarketColor(AgroMarketColorPalette.backgroundLightColor.value),
      tertiary: AgroMarketColor(AgroMarketColorPalette.darkGreen.value),
      foregroundPrimary: AgroMarketColor(AgroMarketColorPalette.darkGreen.value),
      foregroundSecondary: AgroMarketColor(AgroMarketColorPalette.secondaryLightColor.value),
      foregroundTertiary: AgroMarketColor(AgroMarketColorPalette.foregroundTertiaryLight.value),
      backgroundPrimary: AgroMarketColor(AgroMarketColorPalette.white.value),
      backgroundSecondary: AgroMarketColor(AgroMarketColorPalette.white.value),
      backgroundTertiary: AgroMarketColor(AgroMarketColorPalette.backgroundLightColor.value),
    );
  }



  static AgroMarketColorThemeExtension of(BuildContext context) {
    final colorTheme = Theme.of(context).extension<AgroMarketColorThemeExtension>();

    if (colorTheme == null) return light();

    return colorTheme;
  }
}
