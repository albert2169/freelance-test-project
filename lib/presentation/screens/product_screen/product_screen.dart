import 'package:agro_market/presentation/app_constatns/app_dimensions.dart';
import 'package:agro_market/presentation/app_constatns/app_icons.dart';
import 'package:agro_market/presentation/app_constatns/app_padding.dart';
import 'package:agro_market/presentation/app_constatns/text_constants/product_screen_text_constatnts.dart';
import 'package:agro_market/presentation/blocs/shopping_basket_state/shopping_basket_bloc.dart';
import 'package:agro_market/presentation/blocs/shopping_basket_state/shopping_basket_event.dart';
import 'package:agro_market/presentation/blocs/shopping_basket_state/shopping_basket_state.dart';
import 'package:agro_market/presentation/custom/custom_widgets/custom_app_bar.dart';
import 'package:agro_market/presentation/custom/helper_functions/custom_dialog.dart';
import 'package:agro_market/presentation/custom/helper_functions/custom_snack_bar.dart';
import 'package:agro_market/presentation/custom/custom_widgets/height_box.dart';
import 'package:agro_market/presentation/custom/custom_widgets/primary_button.dart';
import 'package:agro_market/presentation/custom/custom_widgets/shopping_basket_cart.dart';
import 'package:agro_market/presentation/custom/enums/packaging_type_enum.dart';
import 'package:agro_market/presentation/models/product_view_model.dart';
import 'package:agro_market/presentation/screens/product_categories/category_item.dart';
import 'package:agro_market/presentation/screens/product_screen/widgets/product_details_tab.dart';
import 'package:agro_market/presentation/screens/product_screen/widgets/product_image_selection_section.dart';
import 'package:agro_market/presentation/screens/product_screen/widgets/product_packaging_section.dart';
import 'package:agro_market/presentation/screens/product_screen/widgets/product_price_section.dart';
import 'package:agro_market/presentation/theme/colors/agro_market_color_palette.dart';
import 'package:agro_market/presentation/theme/text/agro_market_theme_extension.dart';
import 'package:agro_market/presentation/theme/text/app_fonts.dart';
import 'package:agro_market/router/app_router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

@RoutePage()
class ProductScreen extends StatefulWidget {
  final ProductViewModel product;
  const ProductScreen({super.key, required this.product});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  Image? _selectedImage;
  late String _selectedPackaging;
  int? _currenAmount;
  late double? _currentPrice;
  late double _initialPrice;

  @override
  void initState() {
    super.initState();

    final currentPackagingMap = widget.product.priceInfo[widget.product.packagingType];

    _selectedPackaging = currentPackagingMap!.keys.first;

    if (widget.product.packagingType == PackagingType.amount) {
      _currenAmount = 1;
    }
    _currentPrice = currentPackagingMap[_selectedPackaging];
    _initialPrice = _currentPrice!;
    _initializeSelectedImage();
  }

  void _initializeSelectedImage() {
    if (widget.product.previewImages.isNotEmpty) {
      _selectedImage = widget.product.previewImages.first;
    } else if (widget.product.displayImage != null) {
      _selectedImage = widget.product.displayImage;
    } else {
      _selectedImage = null;
    }
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).extension<AgroMarketThemeExtension>();

    return BlocBuilder<ShoppingBasketBloc, ShoppingBasketState>(
      builder: (context, shoppingBasketState) {
        final previewImages = widget.product.previewImages;

        if (_selectedImage == null) {
          return const Center(child: CircularProgressIndicator());
        }

        return Scaffold(
          backgroundColor: AgroMarketColorPalette.backgroundGradientColor,
          appBar: CustomAppBar(
            rightWidget: const ShoppingBasketCart(),
            leftWidget: GestureDetector(
              onTap: () => context.router.pop(),
              child: SvgPicture.asset(AppIcons.arrowBackIcon),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: AppDimensions.productImageSelectionSectionHeight,
                  child: ProductImageSelectionSection(
                    previewImages: previewImages,
                    onImageTap: (index) {
                      setState(() {
                        _selectedImage = previewImages[index];
                      });
                    },
                    selectedImage: _selectedImage!,
                  ),
                ),
                HeightBox(height: AppDimensions.normalHeight),
                Padding(
                  padding: AppPaddings.pageContentPadding,
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width / 2,
                          child: Text(widget.product.name, style: textTheme!.productBigTextStyle),
                        ),
                      ),
                      HeightBox(height: AppDimensions.mediumHeight),
                      CategoryItem(category: widget.product.productCategory),
                      HeightBox(height: AppDimensions.bigMediumHeight),
                      if (widget.product.packagingType != PackagingType.amount)
                        ProductPackagingSection(
                          onPackagingOptionSelected: (selected) {
                            setState(() {
                              _selectedPackaging = selected;
                              _currentPrice = widget
                                  .product
                                  .priceInfo[widget.product.packagingType]![_selectedPackaging];
                            });
                          },
                          product: widget.product,
                        ),
                      if (widget.product.packagingType != PackagingType.amount)
                        HeightBox(height: AppDimensions.hugeHeight),
                      ProductDetailsTabs(
                        descriptionPoints: widget.product.description.isNotEmpty
                            ? _parseBulletedString(widget.product.description)
                            : [ProductScreenTextConstatnts.emptyProductDescriptionText],
                        compositionPoints: widget.product.compoundDescription.isNotEmpty
                            ? _parseBulletedString(widget.product.compoundDescription)
                            : [ProductScreenTextConstatnts.emptyProductCompositiuonText],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: Padding(
            padding: AppPaddings.bottomNavBarPadding,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                PriceAndQuantitySelector(
                  shoppingCard: widget.product.packagingType != PackagingType.amount
                      ? PrimaryButton(
                          textStyle: textTheme.primaryButtonTextStyle,
                          title: ProductScreenTextConstatnts.intoTheBasketText,
                          onPressed: () {
                            context.read<ShoppingBasketBloc>().add(
                              AddProductIntoBasket(
                                onSuccess: (isSuccess) {
                                  if (isSuccess) {
                                    showCustomSnackBar(
                                      context,
                                      ProductScreenTextConstatnts.productAddIntoBasketText,
                                      AgroMarketColorPalette.primaryButtonColor,
                                    );
                                  } else {
                                    showCustomSnackBar(
                                      context,
                                      ProductScreenTextConstatnts.errorWhileAddingIntoTheBasketText,
                                      Colors.red,
                                    );
                                  }
                                },
                                productPrice: _currentPrice!,
                                product: {
                                  '${widget.product.packagingType != PackagingType.amount ? _selectedPackaging : _currenAmount}':
                                      widget.product,
                                },
                              ),
                            );
                          },
                        )
                      : null,
                  currentPrice: _currentPrice!,
                  onQuantityChanged: (value) {
                    _currenAmount = value;
                  },
                  onMinusPressed: (value) {
                    setState(() {
                      _currentPrice = value * _initialPrice;
                    });
                  },
                  onPlusPressed: (value) {
                    setState(() {
                      _currentPrice = value * _initialPrice;
                    });
                  },
                ),
                HeightBox(height: AppDimensions.bigNormalHeight),
                if (widget.product.packagingType == PackagingType.amount)
                  PrimaryButton(
                    textStyle: textTheme.primaryButtonTextStyle,
                    title: ProductScreenTextConstatnts.intoTheBasketText,
                    onPressed: () {
                      context.read<ShoppingBasketBloc>().add(
                        AddProductIntoBasket(
                          onSuccess: (isSuccess) {
                            if (isSuccess) {
                              showCustomSnackBar(
                                context,
                               ProductScreenTextConstatnts.productAddIntoBasketText,
                                AgroMarketColorPalette.primaryButtonColor,
                              );
                            } else {
                              showCustomSnackBar(
                                context,
                               ProductScreenTextConstatnts.errorWhileAddingIntoTheBasketText,
                                AgroMarketColorPalette.errorColor,
                              );
                            }
                          },
                          productPrice: _currentPrice!,
                          product: {
                            '${widget.product.packagingType != PackagingType.amount ? _selectedPackaging : _currenAmount}':
                                widget.product,
                          },
                        ),
                      );
                    },
                  ),
                if (widget.product.packagingType == PackagingType.amount) HeightBox(height: AppDimensions.mediumHeight),
                PrimaryButton(
                  textStyle: textTheme.primaryButtonTextStyle,
                  title: ProductScreenTextConstatnts.productOrderText,
                  onPressed: shoppingBasketState.basketProducts.isEmpty
                      ? null
                      : () {
                          showCustomDialog(
                            context: context,
                            title: ProductScreenTextConstatnts.productTakeQuestionText,
                            actions: [
                              PrimaryButton(
                                title: ProductScreenTextConstatnts.productDeliveryText,
                                textStyle: textTheme.primaryButtonTextStyle,
                                onPressed: () {
                                  context.pop();

                                  context.router.push(DeliveryRoute());
                                },
                              ),
                              PrimaryButton(
                                title: ProductScreenTextConstatnts.selfPickupText,
                                backgroundColor: AgroMarketColorPalette.white,
                                textStyle: textTheme.productCategoryStyle.copyWith(
                                  fontSize: AppFonts.bigFontSize,
                                ),
                                onPressed: () {
                                  context.pop();

                                  context.router.push(SelfPickupRoute());
                                },
                              ),
                            ],
                          );
                        },
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  List<String> _parseBulletedString(String text) {
    return text
        .split('\n')
        .map((line) => line.trim())
        .where((line) => line.startsWith('• '))
        .map((line) => line.substring(2))
        .toList();
  }
}
