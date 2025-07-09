import 'package:agro_market/presentation/app_constatns/app_padding.dart';
import 'package:agro_market/presentation/custom/custom_widgets/height_box.dart';
import 'package:agro_market/presentation/custom/custom_widgets/width_box.dart';
import 'package:agro_market/presentation/custom/enums/prouduct_category_enum.dart';
import 'package:agro_market/presentation/models/product_view_model.dart';
import 'package:agro_market/presentation/theme/colors/agro_market_color_palette.dart';
import 'package:agro_market/presentation/theme/text/agro_market_theme_extension.dart';
import 'package:agro_market/presentation/theme/text/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:agro_market/presentation/custom/custom_widgets/primary_button.dart';

class ProductCard extends StatelessWidget {
  final Function onCardTap;
  final ProductViewModel product;

  const ProductCard({super.key, required this.onCardTap, required this.product});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).extension<AgroMarketThemeExtension>();

    return GestureDetector(
      onTap: () => onCardTap(),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final double imageHeight = constraints.maxHeight * 0.45;
          final double buttonHeight = constraints.maxHeight * 0.1;
          return Container(
            decoration: BoxDecoration(
              color: AgroMarketColorPalette.white,
              borderRadius: BorderRadius.circular(18.6),
            ),
            child: Padding(
              padding: AppPaddings.productCardPadding,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  if (product.displayImage != null)
                    SizedBox(height: imageHeight, child: product.displayImage),
                  const HeightBox(height: 7.82),
                  Expanded(
                    child: Text(
                      product.name,
                      style: textTheme!.productNameStyle,
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const HeightBox(height: 8.1),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      product.productCategory.image,
                      const WidthBox(width: 4),
                      Expanded(
                        child: Text(
                          product.productCategory.name,
                          style: textTheme.productCategoryStyle,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  HeightBox(height: 11.72),
                  SizedBox(
                    height: buttonHeight,
                    child: PrimaryButton(
                      title: 'Подробнее',
                      onPressed: () => onCardTap(),
                      textStyle: textTheme.primaryButtonTextStyle.copyWith(
                        fontSize: 11,
                        fontWeight: AppFonts.meduimPlus,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
