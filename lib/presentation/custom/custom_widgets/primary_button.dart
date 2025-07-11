import 'package:agro_market/presentation/theme/colors/agro_market_color_palette.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String title;
  final VoidCallback? onPressed; 
  final TextStyle textStyle;
  final Color? backgroundColor;

  const PrimaryButton({
    super.key,
    required this.title,
    required this.textStyle,
    required this.onPressed,
    this.backgroundColor
  });

  @override
  Widget build(BuildContext context) {


    return SizedBox(
      height: 48, 
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor ?? AgroMarketColorPalette.primaryButtonColor,
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
