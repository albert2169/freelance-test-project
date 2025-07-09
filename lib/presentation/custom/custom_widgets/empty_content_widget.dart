import 'package:agro_market/presentation/theme/text/agro_market_theme_extension.dart';
import 'package:flutter/material.dart';

class EmptyContentWidget extends StatelessWidget {
  final String msg;
  const EmptyContentWidget({super.key, required this.msg, });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).extension<AgroMarketThemeExtension>();
    return  Center(
        child: Text(
         msg,
          style: textTheme!.introTitleTextStyle,
        ),
    );
  }
}