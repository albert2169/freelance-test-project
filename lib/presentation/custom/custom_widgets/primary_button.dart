import 'package:agro_market/presentation/theme/colors/agro_market_color_palette.dart';
import 'package:agro_market/presentation/theme/text/agro_market_theme_extension.dart';
import 'package:flutter/material.dart';
// You'll likely need to import your custom theme extensions here
// import 'package:agro_market/presentation/theme/colors/agro_market_color_palette.dart';
// import 'package:agro_market/presentation/theme/colors/agro_market_color_theme_extension.dart';
// import 'package:agro_market/presentation/theme/text/agro_market_theme_extension.dart';

class PrimaryButton extends StatelessWidget {
  final String title;
  final VoidCallback? onPressed; // Optional callback for when the button is pressed
  final TextStyle textStyle;

  const PrimaryButton({
    super.key,
    required this.title,
    required this.textStyle,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
      final textTheme =
        Theme.of(context).extension<AgroMarketThemeExtension>();


    return SizedBox(
      height: 48, 
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AgroMarketColorPalette.primaryButtonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          padding: EdgeInsets.zero, 
          elevation: 0, 
        ),
        child: Text(
          title,
          style: textStyle
        ),
      ),
    );
  }
}
