import 'package:agro_market/presentation/app_constatns/app_padding.dart';
import 'package:agro_market/presentation/app_constatns/text_constants/main_content_constants.dart';
import 'package:agro_market/presentation/custom/custom_widgets/custom_app_bar.dart';
import 'package:agro_market/presentation/custom/custom_widgets/empty_content_widget.dart';
import 'package:agro_market/presentation/custom/custom_widgets/custom_error_widget.dart';
import 'package:agro_market/presentation/custom/custom_widgets/height_box.dart';
import 'package:agro_market/presentation/custom/custom_widgets/custom_loading_widget.dart';
import 'package:agro_market/presentation/custom/custom_widgets/shopping_basket_cart.dart';
import 'package:agro_market/presentation/custom/enums/load_state_enum.dart';
import 'package:agro_market/presentation/custom/enums/prouduct_category_enum.dart';
import 'package:agro_market/presentation/screens/product_catalogue/state/product_catalogue_event.dart';
import 'package:agro_market/presentation/screens/product_catalogue/state/product_catalogue_bloc.dart';
import 'package:agro_market/presentation/screens/product_catalogue/state/product_catalogue_state.dart';
import 'package:agro_market/presentation/screens/product_catalogue/widgets/app_bar_category_widget.dart';
import 'package:agro_market/presentation/screens/product_catalogue/widgets/applied_filter_section.dart';
import 'package:agro_market/presentation/screens/product_catalogue/widgets/product_card.dart';
import 'package:agro_market/presentation/theme/colors/agro_market_color_palette.dart';
import 'package:agro_market/presentation/theme/text/agro_market_theme_extension.dart';
import 'package:agro_market/router/app_router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class ProductCatalogue extends StatefulWidget {
  const ProductCatalogue({super.key});

  @override
  State<ProductCatalogue> createState() => _ProductCatalogueState();
}

class _ProductCatalogueState extends State<ProductCatalogue> {
  @override
  void initState() {
    super.initState();
    context.read<ProductCatalogueBloc>().add(FetchProducts());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: BlocBuilder<ProductCatalogueBloc, ProductCatalogueState>(
        builder: (context, state) {
          final textTheme = Theme.of(context).extension<AgroMarketThemeExtension>();
          return Scaffold(
            backgroundColor: AgroMarketColorPalette.backgroundGradientColor,
            appBar: CustomAppBar(
              title: MainContentConstants.appBarTitle,
              leftWidget:  AppBarCategoryWidget(selectedCategory: state.appliedFilter),
              rightWidget: const ShoppingBasketCart(),
            ),
            body: () {
              switch (state.loadState) {
                case LoadState.loading:
                  return Container(
                    padding: AppPaddings.pageContentPadding,
                    child: CustomLoadingWidget(),
                  );
                case LoadState.failure:
                  return Container(
                    padding: AppPaddings.pageContentPadding,
                    child: CustomErrorWidget(errorMsg: state.errorMsg),
                  );
                case LoadState.loaded:
                  final isFilterApplied = state.appliedFilter != ProductCategory.none;
                  final products = isFilterApplied
                      ? [...state.filteredProducts]
                      : [...state.products];
                  if (products.isEmpty) {
                    return const EmptyContentWidget(msg: 'товар не найден',);
                  }
                  return SingleChildScrollView(
                    child: Container(
                      padding: AppPaddings.pageContentPadding,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AppliedFilterSection(productCategory: state.appliedFilter),
                          HeightBox(height: 43),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Text(
                              'Всего: ${products.length}',
                              style: textTheme!.productNameStyle.copyWith(fontSize: 14),
                            ),
                          ),
                          HeightBox(height: 4),
                          GridView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 15,
                              mainAxisSpacing: 16,
                              childAspectRatio: 0.7,
                            ),
                            itemCount: products.length,
                            itemBuilder: (context, index) {
                              return ProductCard(
                                product: products[index],
                                onCardTap: () {
                                  context.router.push(ProductRoute(product: products[index]));
                                },
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  );
              }
            }(),
          );
        },
      ),
    );
  }
}