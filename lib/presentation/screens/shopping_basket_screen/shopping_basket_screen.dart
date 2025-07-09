import 'package:agro_market/presentation/app_constatns/app_icons.dart';
import 'package:agro_market/presentation/app_constatns/app_padding.dart';
import 'package:agro_market/presentation/blocs/shopping_basket_state/shopping_basket_bloc.dart';
import 'package:agro_market/presentation/blocs/shopping_basket_state/shopping_basket_event.dart';
import 'package:agro_market/presentation/blocs/shopping_basket_state/shopping_basket_state.dart';
import 'package:agro_market/presentation/custom/custom_widgets/custom_app_bar.dart';
import 'package:agro_market/presentation/custom/custom_widgets/custom_error_widget.dart';
import 'package:agro_market/presentation/custom/custom_widgets/custom_loading_widget.dart';
import 'package:agro_market/presentation/custom/helper_functions/custom_dialog.dart';
import 'package:agro_market/presentation/custom/helper_functions/custom_snack_bar.dart';
import 'package:agro_market/presentation/custom/custom_widgets/empty_content_widget.dart';
import 'package:agro_market/presentation/custom/custom_widgets/primary_button.dart';
import 'package:agro_market/presentation/custom/enums/load_state_enum.dart';
import 'package:agro_market/presentation/screens/shopping_basket_screen/widgets/shopping_basket_card.dart';
import 'package:agro_market/presentation/screens/shopping_basket_screen/widgets/shopping_basket_price_info_section.dart';
import 'package:agro_market/presentation/theme/colors/agro_market_color_palette.dart';
import 'package:agro_market/presentation/theme/text/agro_market_theme_extension.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class ShoppingBasketScreen extends StatefulWidget {
  const ShoppingBasketScreen({super.key});

  @override
  State<ShoppingBasketScreen> createState() => _ShoppingBasketScreen();
}

class _ShoppingBasketScreen extends State<ShoppingBasketScreen> {
  @override
  void initState() {
    super.initState();
    context.read<ShoppingBasketBloc>().add(FetchBasketProducts());
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).extension<AgroMarketThemeExtension>();

    return Scaffold(
      backgroundColor: AgroMarketColorPalette.backgroundGradientColor,
      appBar: CustomAppBar(
        title: 'Корзина',
        leftWidget: GestureDetector(
          onTap: () => context.router.pop(),
          child: SvgPicture.asset(AppIcons.arrowBackIcon),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 41),
        child: BlocBuilder<ShoppingBasketBloc, ShoppingBasketState>(
          builder: (context, shoppingBasketState) {
            switch (shoppingBasketState.loadState) {
              case LoadState.loading:
                return const CustomLoadingWidget();

              case LoadState.failure:
                return CustomErrorWidget(errorMsg: shoppingBasketState.errorMsg);

              case LoadState.loaded:
                final basketProducts = shoppingBasketState.basketProducts;

                if (basketProducts.isEmpty) {
                  return const EmptyContentWidget(msg: 'Корзина пуста');
                }

                return SingleChildScrollView(
                  padding: AppPaddings.pageContentPadding,
                  child: Column(
                    children: [
                      for (int i = 0; i < basketProducts.length; ++i)
                        ShoppingBasketCard(
                          basketProduct: basketProducts[i],
                          onCardDeletTap: (productPrice) => context.read<ShoppingBasketBloc>().add(
                            RemoveBasketProducts(
                              onSuccess: (isRemoved) {
                                if (isRemoved) {
                                  showCustomSnackBar(
                                    context,
                                    'Товар был удалён',
                                    AgroMarketColorPalette.primaryButtonColor,
                                  );
                                } else {
                                  showCustomSnackBar(
                                    context,
                                    'Не удалось удалить товар из корзины',
                                    AgroMarketColorPalette.errorColor,
                                  );
                                }
                              },
                              productIdx: i,
                              productPrice: productPrice,
                            ),
                          ),
                        ),
                      ShoppingBasketPriceInfoSection(
                        totalPrice: shoppingBasketState.totalPrice,
                        deliverPrice: null,
                      ),
                    ],
                  ),
                );
            }
          },
        ),
      ),
      bottomNavigationBar: BlocBuilder<ShoppingBasketBloc, ShoppingBasketState>(
        builder: (context, shoppingBasketState) {
          if (shoppingBasketState.basketProducts.isEmpty) {
            return const SizedBox.shrink();
          }
          return Padding(
            padding: const EdgeInsets.only(bottom: 40, left: 20, right: 20, top: 20),
            child: PrimaryButton(
              textStyle: textTheme!.primaryButtonTextStyle,
              title: 'Оформить заказ',
              onPressed: shoppingBasketState.basketProducts.isEmpty
                  ? null
                  : () {
                      showCustomDialog(
                        context: context,
                        title: 'Как вы зотите забрать товар?',
                        actions: [
                          PrimaryButton(
                            title: 'Доставка',
                            textStyle: textTheme.primaryButtonTextStyle,
                            onPressed: () {},
                          ),
                          PrimaryButton(
                            title: 'Самовывоз',
                            backgroundColor: AgroMarketColorPalette.white,
                            textStyle: textTheme.productCategoryStyle.copyWith(fontSize: 18),
                            onPressed: () {},
                          ),
                        ],
                      );
                    },
            ),
          );
        },
      ),
    );
  }
}
