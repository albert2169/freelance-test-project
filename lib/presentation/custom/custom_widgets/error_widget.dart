import 'package:agro_market/presentation/theme/text/agro_market_theme_extension.dart';
import 'package:flutter/material.dart';

class AgroMarketErrorWidget extends StatelessWidget {
  final String errorMsg;
  const AgroMarketErrorWidget({super.key, required this.errorMsg});

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