import 'package:agro_market/presentation/theme/text/agro_market_theme_extension.dart';
import 'package:flutter/material.dart';

class ShoppingBasketPriceInfoItem extends StatelessWidget {
  final String priceInfo;
  final String? price;

  const ShoppingBasketPriceInfoItem({super.key, required this.priceInfo, required this.price});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).extension<AgroMarketThemeExtension>();

    Widget buildStyledPrice(String price) {
      final parts = price.split('.');
      final hasFraction = parts.length > 1 && parts[1] != '00';

      return Text.rich(
        TextSpan(
          children: [
            TextSpan(text: '\$${parts[0]}', style: textTheme?.shoppingBasketProductPriceTextStyle),
            if (hasFraction)
              TextSpan(
                text: '.${parts[1]}',
                style: textTheme?.shoppingBasketProductPriceTextStyle.copyWith(fontSize: 14),
              ),
          ],
        ),
      );
    }

    return SizedBox(
      height: 27,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(priceInfo, style: textTheme?.shoppingBasketPriceInfoStyle),
          price == null
              ? Text('Бесплатно', style: textTheme?.shoppingBasketProductPriceTextStyle)
              : buildStyledPrice(price!),
        ],
      ),
    );
  }
}
