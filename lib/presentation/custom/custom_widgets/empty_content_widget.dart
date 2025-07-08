import 'package:agro_market/presentation/theme/text/agro_market_theme_extension.dart';
import 'package:flutter/material.dart';

class EmptyContentWidget extends StatelessWidget {
  const EmptyContentWidget({super.key, });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).extension<AgroMarketThemeExtension>();
    return  Center(
        child: Text(
          'товар не найден',
          style: textTheme!.introTitleTextStyle,
        ),
    );
  }
}