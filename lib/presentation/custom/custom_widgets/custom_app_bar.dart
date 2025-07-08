import 'package:agro_market/presentation/theme/colors/agro_market_color_palette.dart';
import 'package:agro_market/presentation/theme/text/agro_market_theme_extension.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? leftWidget;

  final String? title;

  final Widget? rightWidget;

  final Color? backgroundColor;

  @override
  final Size preferredSize;

  const CustomAppBar({
    super.key,
    this.leftWidget,
    this.title,
    this.rightWidget,
    this.backgroundColor,
  }) : preferredSize = const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).extension<AgroMarketThemeExtension>();
    return Stack(
      children: [
        AppBar(
          elevation: 0,
          backgroundColor: AgroMarketColorPalette.backgroundGradientColor,
          leading: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: leftWidget,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: rightWidget ?? SizedBox.shrink(),
            )
          ],
          centerTitle: true,
          title: title != null ? Text(title!, style: textTheme?.appBarTitleStyle) : null,
        ),
      ],
    );
  }
}

