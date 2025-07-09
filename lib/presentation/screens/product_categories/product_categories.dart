import 'package:agro_market/presentation/app_constatns/app_icons.dart';
import 'package:agro_market/presentation/app_constatns/app_padding.dart';
import 'package:agro_market/presentation/app_constatns/text_constants/product_categories_text_constants.dart';
import 'package:agro_market/presentation/custom/custom_widgets/custom_app_bar.dart';
import 'package:agro_market/presentation/custom/enums/prouduct_category_enum.dart';
import 'package:agro_market/presentation/screens/product_categories/category_item.dart';
import 'package:agro_market/presentation/theme/colors/agro_market_color_palette.dart';
import 'package:agro_market/router/app_router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

@RoutePage()
class ProductCategoriesScreen extends StatefulWidget {
  final ProductCategory selectedCategory;
  const ProductCategoriesScreen({super.key, required this.selectedCategory});

  @override
  State<ProductCategoriesScreen> createState() => _ProductCategoriesScreenState();
}

class _ProductCategoriesScreenState extends State<ProductCategoriesScreen> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final categories = ProductCategory.values;

    return Scaffold(
      backgroundColor: AgroMarketColorPalette.backgroundGradientColor,
      appBar: CustomAppBar(
        leftWidget: GestureDetector(
          onTap: () => context.router.pop(),
          child: SvgPicture.asset(AppIcons.arrowBackIcon),
        ),
        title: ProductCategoriesTextConstants.productCategoriesAppBarTitle,
      ),
      body: Padding(
        padding: AppPaddings.pageContentPadding,
        child: Padding(
          padding: AppPaddings.productCategoriesTopPadding,
          child: ListView.builder(
            itemCount: categories.length,
            itemBuilder: (context, index) {
              final category = categories[index];
              if (categories[index] == ProductCategory.none) {
                return const SizedBox.shrink();
              }
              return GestureDetector(
                onTap: () {
                    context.router.push(ProductSubcategoriesRoute( productCategory: categories[index]));
                },
                child: CategoryItem(category: category, ),
              );
            },
          ),
        ),
      ),
    );
  }
}
