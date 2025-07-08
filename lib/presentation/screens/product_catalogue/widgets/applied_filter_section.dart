import 'package:agro_market/presentation/custom/enums/prouduct_category_enum.dart';
import 'package:agro_market/presentation/theme/text/agro_market_theme_extension.dart';
import 'package:flutter/material.dart';

class AppliedFilterSection extends StatelessWidget {
  final ProductCategory productCategory;
  const AppliedFilterSection({super.key, required this.productCategory});

  @override
  Widget build(BuildContext context) {
        final textTheme = Theme.of(context).extension<AgroMarketThemeExtension>();

      if (productCategory == ProductCategory.none) {
        return const SizedBox.shrink();
      }
      return Text(
        productCategory.name.toUpperCase(),
        style: textTheme!.productNameStyle,
      );
  }
}