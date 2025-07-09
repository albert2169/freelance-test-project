import 'package:agro_market/presentation/app_constatns/app_dimensions.dart';
import 'package:agro_market/presentation/app_constatns/app_padding.dart';
import 'package:agro_market/presentation/custom/custom_widgets/width_box.dart';
import 'package:agro_market/presentation/custom/enums/prouduct_category_enum.dart';
import 'package:agro_market/presentation/theme/text/agro_market_theme_extension.dart';
import 'package:agro_market/presentation/theme/text/app_fonts.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final ProductCategory category;
  const CategoryItem({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).extension<AgroMarketThemeExtension>();

    return Padding(
      padding: AppPaddings.categoryItemPadding,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start, 
        children: [
          category.image,
          WidthBox(width: AppDimensions.categoryItemSpaceWidth),
          Expanded(
            child: Text(
              category.name,
              style: textTheme?.productCategoryStyle.copyWith(fontSize: AppFonts.mediumFontSize),
              softWrap: true,
              overflow: TextOverflow.ellipsis,
              maxLines: 2, 
            ),
          ),
        ],
      ),
    );
  }
}
