import 'package:flutter/material.dart';

@immutable
class AgroMarketThemeExtension extends ThemeExtension<AgroMarketThemeExtension> {
  const AgroMarketThemeExtension({

    required this.introTitleTextStyle,
    required this.introBodyTextStyle,
    required this.primaryButtonTextStyle,
    required this.appBarTitleStyle,
    required this.productNameStyle,
    required this.productCategoryStyle,
    required this.productBigTextStyle,
    required this.shoppingBasketProductTitleStyle,
    required this.shoppingBasketProductPackagingTextStyle,
    required this.shoppingBasketProductPriceTextStyle,
    required this.shoppingBasketPriceInfoStyle,
  });

  final TextStyle introTitleTextStyle;
  final TextStyle introBodyTextStyle;
  final TextStyle primaryButtonTextStyle;
  final TextStyle appBarTitleStyle;
  final TextStyle productNameStyle;
  final TextStyle productCategoryStyle;
  final TextStyle productBigTextStyle;
  final TextStyle shoppingBasketProductTitleStyle;
  final TextStyle shoppingBasketProductPackagingTextStyle;
  final TextStyle shoppingBasketProductPriceTextStyle;
  final TextStyle shoppingBasketPriceInfoStyle;

  @override
  AgroMarketThemeExtension copyWith({
    TextStyle? introTitleTextStyle,
    TextStyle? introBodyTextStyle,
    TextStyle? primaryButtonTextStyle,
    TextStyle? appBarTitleStyle,
    TextStyle? productNameStyle,
    TextStyle? productCategoryStyle,
    TextStyle? productBigTextStyle,
    TextStyle? shoppingBasketProductTitleStyle,
    TextStyle? shoppingBasketProductPackagingTextStyle,
    TextStyle? shoppingBasketProductPriceTextStyle,
    TextStyle? shoppingBasketPriceInfoStyle,
  }) {
    return AgroMarketThemeExtension(
      primaryButtonTextStyle: primaryButtonTextStyle ?? this.primaryButtonTextStyle,
      introTitleTextStyle: introTitleTextStyle ?? this.introTitleTextStyle,
      introBodyTextStyle: introBodyTextStyle ?? this.introBodyTextStyle,
      appBarTitleStyle: appBarTitleStyle ?? this.appBarTitleStyle,
      productNameStyle: productNameStyle ?? this.productNameStyle, 
      productCategoryStyle: productCategoryStyle ?? this.productCategoryStyle,
      productBigTextStyle: productBigTextStyle ?? this.productBigTextStyle,
      shoppingBasketProductTitleStyle: shoppingBasketProductTitleStyle ?? this.shoppingBasketProductTitleStyle,
      shoppingBasketProductPackagingTextStyle: shoppingBasketProductPackagingTextStyle ?? this.shoppingBasketProductPackagingTextStyle,
      shoppingBasketProductPriceTextStyle: shoppingBasketProductPriceTextStyle ?? this.shoppingBasketProductPriceTextStyle,
      shoppingBasketPriceInfoStyle: shoppingBasketPriceInfoStyle ?? this.shoppingBasketPriceInfoStyle,
    );
  }

  @override
  ThemeExtension<AgroMarketThemeExtension> lerp(
    covariant ThemeExtension<AgroMarketThemeExtension>? other,
    double t,
  ) {
    if (other is! AgroMarketThemeExtension) return this;

    const defaultTextStyle = TextStyle();

    return AgroMarketThemeExtension(
      introTitleTextStyle: TextStyle.lerp(introTitleTextStyle, other.introTitleTextStyle, t) ?? defaultTextStyle,
      introBodyTextStyle: TextStyle.lerp(introBodyTextStyle, other.introBodyTextStyle, t) ?? defaultTextStyle,
      primaryButtonTextStyle: TextStyle.lerp(primaryButtonTextStyle, other.primaryButtonTextStyle, t) ?? defaultTextStyle,
      appBarTitleStyle: TextStyle.lerp(appBarTitleStyle, other.appBarTitleStyle, t) ?? defaultTextStyle,
      productNameStyle: TextStyle.lerp(productNameStyle, other.productNameStyle, t) ?? defaultTextStyle,
      productCategoryStyle: TextStyle.lerp(productCategoryStyle, other.productCategoryStyle, t) ?? defaultTextStyle,
      productBigTextStyle: TextStyle.lerp(productBigTextStyle, other.productBigTextStyle, t) ?? defaultTextStyle,
      shoppingBasketProductTitleStyle: TextStyle.lerp(shoppingBasketProductTitleStyle, other.shoppingBasketProductTitleStyle, t) ?? defaultTextStyle,
      shoppingBasketProductPackagingTextStyle: TextStyle.lerp(shoppingBasketProductPackagingTextStyle, other.shoppingBasketProductPackagingTextStyle, t) ?? defaultTextStyle,
      shoppingBasketProductPriceTextStyle: TextStyle.lerp(shoppingBasketProductPriceTextStyle, other.shoppingBasketProductPriceTextStyle, t) ?? defaultTextStyle,
      shoppingBasketPriceInfoStyle: TextStyle.lerp(shoppingBasketPriceInfoStyle, other.shoppingBasketPriceInfoStyle, t) ?? defaultTextStyle,

    );
  }

  static AgroMarketThemeExtension of(BuildContext context) {
    return Theme.of(context).extension<AgroMarketThemeExtension>()!;
  }
}
