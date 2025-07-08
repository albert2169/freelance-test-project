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

    return Container(
      padding: EdgeInsets.symmetric(vertical: 8),
      height: 40,
      child: Row(
        children: [
          SizedBox(child: category.image),
          WidthBox(width: 12),
          Text(category.name, style: textTheme?.productCategoryStyle.copyWith(fontSize: 16)),
        ],
      ),
    );
  }
}
