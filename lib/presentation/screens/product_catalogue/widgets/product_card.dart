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
      onTap: onCardTap(),
      child: Container(
        decoration: BoxDecoration(
          color: AgroMarketColorPalette.white,
          borderRadius: BorderRadius.circular(18.6),
        ),
        child: Padding(
          padding: AppPaddings.productCardPadding,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              product.displayImage ?? SizedBox.shrink(),
              HeightBox(height: 7.82),
              Padding(
                padding: EdgeInsetsGeometry.only(left: 10, right: 10),
                child: Text(
                  product.name,
                  style: textTheme!.productNameStyle,
                  textAlign: TextAlign.center,
                ),
              ),
              HeightBox(height: 7.82),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    product.productCategory.image,
                    WidthBox(width: 1),
                    Flexible(
                      child: Text(
                        product.productCategory.name,
                        style: textTheme.productCategoryStyle,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ],
                ),
              ),
              HeightBox(height: 7.82),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: SizedBox(
                  height: 22,
                  child: PrimaryButton(title: 'Подробнее', onPressed: () {}, textStyle: textTheme.primaryButtonTextStyle.copyWith(fontSize: 11, fontWeight: AppFonts.meduimPlust),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
