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
  });

  final TextStyle introTitleTextStyle;
  final TextStyle introBodyTextStyle;
  final TextStyle primaryButtonTextStyle;
  final TextStyle appBarTitleStyle;
  final TextStyle productNameStyle;
  final TextStyle productCategoryStyle;
  final TextStyle productBigTextStyle;

  @override
  AgroMarketThemeExtension copyWith({
    TextStyle? introTitleTextStyle,
    TextStyle? introBodyTextStyle,
    TextStyle? primaryButtonTextStyle,
    TextStyle? appBarTitleStyle,
    TextStyle? productNameStyle,
    TextStyle? productCategoryStyle,
    TextStyle? productBigTextStyle,
  }) {
    return AgroMarketThemeExtension(
      primaryButtonTextStyle: primaryButtonTextStyle ?? this.primaryButtonTextStyle,
      introTitleTextStyle: introTitleTextStyle ?? this.introTitleTextStyle,
      introBodyTextStyle: introBodyTextStyle ?? this.introBodyTextStyle,
      appBarTitleStyle: appBarTitleStyle ?? this.appBarTitleStyle,
      productNameStyle: productNameStyle ?? this.productNameStyle, 
      productCategoryStyle: productCategoryStyle ?? this.productCategoryStyle,
      productBigTextStyle: productBigTextStyle ?? this.productBigTextStyle
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

    );
  }

  static AgroMarketThemeExtension of(BuildContext context) {
    return Theme.of(context).extension<AgroMarketThemeExtension>()!;
  }
}
