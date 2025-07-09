import 'package:agro_market/presentation/app_constatns/app_dimensions.dart';
import 'package:agro_market/presentation/app_constatns/app_icons.dart';
import 'package:agro_market/presentation/theme/colors/agro_market_color_palette.dart';
import 'package:agro_market/presentation/theme/text/agro_market_theme_extension.dart';
import 'package:agro_market/presentation/theme/text/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PriceAndQuantitySelector extends StatefulWidget {
  final Widget? shoppingCard;
  final double currentPrice;
  final int initialQuantity;
  final ValueChanged<int>? onQuantityChanged;
  final ValueChanged<int>? onMinusPressed;
  final ValueChanged<int>? onPlusPressed;

  const PriceAndQuantitySelector({
    super.key,
    required this.currentPrice,
    this.initialQuantity = 1,
    this.onQuantityChanged,
    this.onMinusPressed,
    this.onPlusPressed,
    this.shoppingCard,
  });

  @override
  State<PriceAndQuantitySelector> createState() => _PriceAndQuantitySelectorState();
}

class _PriceAndQuantitySelectorState extends State<PriceAndQuantitySelector> {
  late int _currentQuantity;

  @override
  void initState() {
    super.initState();
    _currentQuantity = widget.initialQuantity;
  }

  void _decrementQuantity() {
    setState(() {
      if (_currentQuantity > 1) {
        _currentQuantity--;
        widget.onQuantityChanged?.call(_currentQuantity);
        widget.onMinusPressed?.call(_currentQuantity);
      }
    });
  }

  void _incrementQuantity() {
    setState(() {
      _currentQuantity++;
      widget.onQuantityChanged?.call(_currentQuantity);
      widget.onPlusPressed?.call(_currentQuantity);
    });
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).extension<AgroMarketThemeExtension>();

    Widget buildStyledPrice(double value) {
      final parts = value.toStringAsFixed(2).split('.');
      final hasFraction = parts.length > 1 && parts[1] != '00';

      return Text.rich(
        TextSpan(
          children: [
            TextSpan(text: '\$${parts[0]}', style: textTheme?.shoppingBasketProductPriceTextStyle),
            if (hasFraction)
              TextSpan(
                text: '.${parts[1]}',
                style: textTheme?.shoppingBasketProductPriceTextStyle.copyWith(fontSize: AppFonts.smallFontSize),
              ),
          ],
        ),
      );
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        buildStyledPrice(widget.currentPrice),
        widget.shoppingCard != null
            ? SizedBox(width: MediaQuery.of(context).size.width / 2, child: widget.shoppingCard!)
            : Row(
                children: [
                  GestureDetector(
                    onTap: _decrementQuantity,
                    child: SvgPicture.asset(AppIcons.minusIcon),
                  ),
                  Container(
                    width: AppDimensions.bigWidth,
                    alignment: Alignment.center,
                    child: Text(
                      '$_currentQuantity',
                      style: const TextStyle(
                        fontSize: AppFonts.bigFontSize,
                        fontWeight: FontWeight.w600,
                        color: AgroMarketColorPalette.productPriceDarkColor,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: _incrementQuantity,
                    child: SvgPicture.asset(AppIcons.plusIcon),
                  ),
                ],
              ),
      ],
    );
  }
}
