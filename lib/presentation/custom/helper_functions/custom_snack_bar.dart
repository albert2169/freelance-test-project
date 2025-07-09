
import 'package:agro_market/presentation/theme/text/agro_market_theme_extension.dart';
import 'package:flutter/material.dart';

void showCustomSnackBar(BuildContext context, String message, Color backgroundColor) {
      final textTheme = Theme.of(context).extension<AgroMarketThemeExtension>();

  final snackBar = SnackBar(
    content: Text(
      message,
      style: textTheme!.primaryButtonTextStyle,
    ),
    backgroundColor: backgroundColor,
    behavior: SnackBarBehavior.floating,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    duration: const Duration(seconds: 2),
    margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
  );

  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}