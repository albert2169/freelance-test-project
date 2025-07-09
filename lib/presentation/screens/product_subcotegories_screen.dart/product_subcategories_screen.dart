import 'package:agro_market/presentation/app_constatns/app_dimensions.dart';
import 'package:agro_market/presentation/app_constatns/app_icons.dart';
import 'package:agro_market/presentation/app_constatns/app_padding.dart';
import 'package:agro_market/presentation/app_constatns/text_constants/product_categories_text_constants.dart';
import 'package:agro_market/presentation/custom/custom_widgets/custom_app_bar.dart';
import 'package:agro_market/presentation/custom/custom_widgets/width_box.dart';
import 'package:agro_market/presentation/custom/enums/prouduct_category_enum.dart';
import 'package:agro_market/presentation/screens/product_catalogue/state/product_catalogue_bloc.dart';
import 'package:agro_market/presentation/screens/product_catalogue/state/product_catalogue_event.dart';
import 'package:agro_market/presentation/theme/colors/agro_market_color_palette.dart';
import 'package:agro_market/presentation/theme/text/agro_market_theme_extension.dart';
import 'package:agro_market/presentation/theme/text/app_fonts.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

@RoutePage()
class ProductSubcategoriesScreen extends StatefulWidget {
  final ProductCategory productCategory;
  const ProductSubcategoriesScreen({super.key, required this.productCategory});

  @override
  State<ProductSubcategoriesScreen> createState() => _ProductSubcategoriesScreenState();
}

class _ProductSubcategoriesScreenState extends State<ProductSubcategoriesScreen> {
   Map<String, String> _selectedCategory = {};

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final categories = widget.productCategory.subcategories;
    final textTheme = Theme.of(context).extension<AgroMarketThemeExtension>();

    return Scaffold(
      backgroundColor: AgroMarketColorPalette.backgroundGradientColor,
      appBar: CustomAppBar(
        leftWidget: GestureDetector(
          onTap: () => context.router.pop(),
          child: SvgPicture.asset(AppIcons.arrowBackIcon),
        ),
        title: 'Подкатегория',
      ),
      body: Padding(
        padding: AppPaddings.pageContentPadding,
        child: Padding(
          padding: AppPaddings.productCategoriesTopPadding,
          child: ListView.builder(
            itemCount: categories.length,
            itemBuilder: (context, index) {
              final category = categories[index];
              final isSelected = category == _selectedCategory;
              if (categories[index] == {}) {
                return const SizedBox.shrink();
              }
              return GestureDetector(
                onTap: () {
                  if (_selectedCategory == categories[index]) {
                    context.read<ProductCatalogueBloc>().add(
                      SetProductFilter(productCategory: ProductCategory.none),
                    );
                    setState(() {
                      _selectedCategory = {};
                    });
                    return;
                  }
                  context.read<ProductCatalogueBloc>().add(
                    SetProductFilter(productCategory: widget.productCategory), 
                  );
                  setState(() {
                    _selectedCategory = categories[index];
                  });
                },
                child: Container(
                  padding: AppPaddings.categoryItemPadding,
                  height: AppDimensions.productSubcategoriesSize.height,
                  child: Row(
                    children: [
                      SizedBox(width: AppDimensions.productSubcategoriesSize.width, height: AppDimensions.productSubcategoriesSize.height, child: widget.productCategory.image), 
                      const WidthBox(width: AppDimensions.categoryItemSpaceWidth),
                      Text(
                        category[ProductCategoriesTextConstants.productCategoriesMapName].toString(),
                        style: textTheme?.productCategoryStyle.copyWith(fontSize: AppFonts.mediumFontSize),
                      ),
                      const WidthBox(width: AppDimensions.categoryItemSpaceWidth),
                      if (isSelected) SvgPicture.asset(AppIcons.checkMarkIcon),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
