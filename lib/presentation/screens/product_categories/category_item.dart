import 'package:agro_market/presentation/custom/custom_widgets/width_box.dart';
import 'package:agro_market/presentation/custom/enums/prouduct_category_enum.dart';
import 'package:agro_market/presentation/theme/text/agro_market_theme_extension.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final ProductCategory category;
  const CategoryItem({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).extension<AgroMarketThemeExtension>();

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start, 
        children: [
          category.image,
          WidthBox(width: 12),
          Expanded(
            child: Text(
              category.name,
              style: textTheme?.productCategoryStyle.copyWith(fontSize: 16),
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
