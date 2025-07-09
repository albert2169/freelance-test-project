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
      appBarTitleStyle: TextStyle(
        fontFamily: AppFonts.manropeFontFamily,
        fontWeight: AppFonts.semiBold,
        color: AgroMarketColorPalette.primaryTextDarkColor,
        fontSize: 17,
      ),
      productNameStyle: TextStyle(
        fontFamily: AppFonts.manropeFontFamily,
        fontWeight: AppFonts.bold,
        color: AgroMarketColorPalette.primaryTextDarkColor,
        fontSize: 12,
      ),
      productCategoryStyle: TextStyle(
        fontFamily: AppFonts.manropeFontFamily,
        fontWeight: AppFonts.meduimPlus,
        color: AgroMarketColorPalette.productCategoryLightColor,
        fontSize: 11,
      ),
      productBigTextStyle: TextStyle(
        fontFamily: AppFonts.manropeFontFamily,
        fontWeight: AppFonts.bold,
        color: AgroMarketColorPalette.primaryTextDarkColor,
        fontSize: 20,
      ),
      shoppingBasketProductTitleStyle: TextStyle(
        fontFamily: AppFonts.manropeFontFamily,
        fontWeight: AppFonts.bold,
        color: AgroMarketColorPalette.productCategoryLightColor,
        fontSize: 12,
      ),
      shoppingBasketProductPackagingTextStyle: TextStyle(
        fontFamily: AppFonts.manropeFontFamily,
        fontWeight: AppFonts.semiBold,
        color: AgroMarketColorPalette.productCategoryLightColor,
        fontSize: 14,
      ),
      shoppingBasketProductPriceTextStyle: TextStyle(
        fontFamily: AppFonts.manropeFontFamily,
        fontWeight: AppFonts.bold,
        color: AgroMarketColorPalette.productPriceDarkColor,
        fontSize: 20,
      ),
      shoppingBasketPriceInfoStyle: TextStyle(
        fontFamily: AppFonts.manropeFontFamily,
        fontWeight: AppFonts.meduimPlus,
        color: AgroMarketColorPalette.shoppingBasketPriceInfoColor,
        fontSize: 14,
      ),
      textFildPhoneNumberTextStyle: TextStyle(
        fontFamily: AppFonts.exo2,
        fontWeight: AppFonts.meduimPlus,
        color: AgroMarketColorPalette.deviderColor,
        fontSize: 16,
      ),
    );
  }
}
