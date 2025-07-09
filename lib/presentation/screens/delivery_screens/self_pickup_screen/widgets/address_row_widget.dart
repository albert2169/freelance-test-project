import 'package:agro_market/presentation/theme/colors/agro_market_color_palette.dart';
import 'package:agro_market/presentation/theme/text/agro_market_theme_extension.dart';
import 'package:flutter/material.dart';

class AddressRowWidget extends StatelessWidget {
  final String pickupAddress;
  const AddressRowWidget({super.key, required this.pickupAddress});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).extension<AgroMarketThemeExtension>();

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 12.0,
          height: 12.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: AgroMarketColorPalette.primaryTextDarkColor, width: 2.0),
            color: AgroMarketColorPalette.primaryTextDarkColor,
          ),
          child: Center(
            child: Container(
              width: 4,
              height: 4,
              decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.white),
            ),
          ),
        ),
        const SizedBox(width: 8.0),
        Flexible(child: Text(pickupAddress, style: textTheme!.introBodyTextStyle)),
      ],
    );
  }
}
