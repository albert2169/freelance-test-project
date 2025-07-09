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
        fontSize: AppFonts.enormousFontSize,
      ),
      introBodyTextStyle: TextStyle(
        fontFamily: AppFonts.poppinsFontFamily,
        fontWeight: AppFonts.medium,
        color: AgroMarketColorPalette.primaryTextDarkColor,
        fontSize: AppFonts.smallMediumFontSize,
      ),
      primaryButtonTextStyle: TextStyle(
        fontFamily: AppFonts.manropeFontFamily,
        fontWeight: AppFonts.bold,
        color: AgroMarketColorPalette.white,
        fontSize: AppFonts.mediumFontSize,
      ),
      appBarTitleStyle: TextStyle(
        fontFamily: AppFonts.manropeFontFamily,
        fontWeight: AppFonts.semiBold,
        color: AgroMarketColorPalette.primaryTextDarkColor,
        fontSize: AppFonts.bigMediumFontSize,
      ),
      productNameStyle: TextStyle(
        fontFamily: AppFonts.manropeFontFamily,
        fontWeight: AppFonts.bold,
        color: AgroMarketColorPalette.primaryTextDarkColor,
        fontSize: AppFonts.tooSmallFontSize,
      ),
      productCategoryStyle: TextStyle(
        fontFamily: AppFonts.manropeFontFamily,
        fontWeight: AppFonts.meduimPlus,
        color: AgroMarketColorPalette.productCategoryLightColor,
        fontSize: AppFonts.pocoFontSize,
      ),
      productBigTextStyle: TextStyle(
        fontFamily: AppFonts.manropeFontFamily,
        fontWeight: AppFonts.bold,
        color: AgroMarketColorPalette.primaryTextDarkColor,
        fontSize: AppFonts.hugeFontSize,
      ),
      shoppingBasketProductTitleStyle: TextStyle(
        fontFamily: AppFonts.manropeFontFamily,
        fontWeight: AppFonts.bold,
        color: AgroMarketColorPalette.productCategoryLightColor,
        fontSize: AppFonts.tooSmallFontSize,
      ),
      shoppingBasketProductPackagingTextStyle: TextStyle(
        fontFamily: AppFonts.manropeFontFamily,
        fontWeight: AppFonts.semiBold,
        color: AgroMarketColorPalette.productCategoryLightColor,
        fontSize: AppFonts.smallFontSize,
      ),
      shoppingBasketProductPriceTextStyle: TextStyle(
        fontFamily: AppFonts.manropeFontFamily,
        fontWeight: AppFonts.bold,
        color: AgroMarketColorPalette.productPriceDarkColor,
        fontSize: AppFonts.hugeFontSize,
      ),
      shoppingBasketPriceInfoStyle: TextStyle(
        fontFamily: AppFonts.manropeFontFamily,
        fontWeight: AppFonts.meduimPlus,
        color: AgroMarketColorPalette.shoppingBasketPriceInfoColor,
        fontSize: AppFonts.smallFontSize,
      ),
      textFildPhoneNumberTextStyle: TextStyle(
        fontFamily: AppFonts.exo2,
        fontWeight: AppFonts.meduimPlus,
        color: AgroMarketColorPalette.deviderColor,
        fontSize: AppFonts.mediumFontSize,
      ),
    );
  }
}
