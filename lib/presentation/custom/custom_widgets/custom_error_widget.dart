import 'package:agro_market/presentation/theme/text/agro_market_theme_extension.dart';
import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  final String errorMsg;
  const CustomErrorWidget({super.key, required this.errorMsg});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).extension<AgroMarketThemeExtension>();
    return  Center(
        child: Text(
          errorMsg,
          style: textTheme!.introTitleTextStyle,
        ),
    );
  }
}