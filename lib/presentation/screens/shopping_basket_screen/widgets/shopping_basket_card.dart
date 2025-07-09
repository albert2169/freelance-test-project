import 'package:agro_market/presentation/app_constatns/app_icons.dart';
import 'package:agro_market/presentation/custom/enums/packaging_type_enum.dart';
import 'package:agro_market/presentation/models/product_view_model.dart';
import 'package:agro_market/presentation/screens/product_categories/category_item.dart';
import 'package:agro_market/presentation/theme/colors/agro_market_color_palette.dart';
import 'package:agro_market/presentation/theme/text/agro_market_theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ShoppingBasketCard extends StatelessWidget {
  final Map<String, ProductViewModel> basketProduct;
  final Function(double) onCardDeletTap;
  const ShoppingBasketCard({super.key, required this.basketProduct, required this.onCardDeletTap});

  int? extractInteger(String input) {
    final regex = RegExp(r'\d+');
    final match = regex.firstMatch(input);
    if (match != null) {
      return int.parse(match.group(0)!);
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).extension<AgroMarketThemeExtension>();

    double? totalPrice = 0;
    final productChosenPackaging = basketProduct.keys.first;
    final product = basketProduct[productChosenPackaging]!;

    if (product.packagingType == PackagingType.amount) {
      totalPrice =
          double.tryParse(productChosenPackaging)! *
          product.priceInfo[product.packagingType]!['1']!;
    } else {
      totalPrice = product.priceInfo[product.packagingType]![productChosenPackaging];
    }
    if (totalPrice == null) {
      return const SizedBox.shrink();
    }
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Column(
        children: [
          SizedBox(
            height: 119,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only( top: 15, bottom: 15),
                  child: product.displayImage!,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product.name.toUpperCase(),
                        style: textTheme!.shoppingBasketProductTitleStyle,
                      ),
                      CategoryItem(category: product.productCategory),
                      Text(
                        product.packagingType == PackagingType.amount
                            ? 'x$productChosenPackaging'
                            : productChosenPackaging,
                        style: textTheme.shoppingBasketProductTitleStyle,
                      ),
                      Text(
                        '\$${totalPrice.toString()}',
                        style: textTheme.shoppingBasketProductPriceTextStyle,
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () => onCardDeletTap(totalPrice!),
                  child: SvgPicture.asset(AppIcons.deleteBasket),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Divider(color: AgroMarketColorPalette.deviderColor, thickness: 2),
          ),
        ],
      ),
    );
  }
}
