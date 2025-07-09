import 'package:agro_market/presentation/app_constatns/app_dimensions.dart';
import 'package:agro_market/presentation/app_constatns/app_icons.dart';
import 'package:agro_market/presentation/app_constatns/app_padding.dart';
import 'package:agro_market/presentation/blocs/shopping_basket_state/shopping_basket_bloc.dart';
import 'package:agro_market/presentation/blocs/shopping_basket_state/shopping_basket_event.dart';
import 'package:agro_market/presentation/blocs/shopping_basket_state/shopping_basket_state.dart';
import 'package:agro_market/presentation/custom/custom_widgets/custom_app_bar.dart';
import 'package:agro_market/presentation/custom/custom_widgets/custom_error_widget.dart';
import 'package:agro_market/presentation/custom/custom_widgets/custom_loading_widget.dart';
import 'package:agro_market/presentation/custom/custom_widgets/custom_text_field.dart';
import 'package:agro_market/presentation/custom/custom_widgets/height_box.dart';
import 'package:agro_market/presentation/custom/custom_widgets/primary_button.dart';
import 'package:agro_market/presentation/custom/enums/load_state_enum.dart';
import 'package:agro_market/presentation/models/delivery_details_view_model.dart';
import 'package:agro_market/presentation/screens/delivery_screens/state/delivery_bloc.dart';
import 'package:agro_market/presentation/screens/delivery_screens/state/delivery_event.dart';
import 'package:agro_market/presentation/screens/delivery_screens/state/delivery_state.dart';
import 'package:agro_market/presentation/theme/colors/agro_market_color_palette.dart';
import 'package:agro_market/presentation/theme/text/agro_market_theme_extension.dart';
import 'package:agro_market/router/app_router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class DeliveryScreen extends StatefulWidget {
  const DeliveryScreen({super.key});

  @override
  State<DeliveryScreen> createState() => _DeliveryScreenState();
}

class _DeliveryScreenState extends State<DeliveryScreen> {
  final TextEditingController addressTextEditingController = TextEditingController();
  final TextEditingController contactNumberTextEditingController = TextEditingController();
  final TextEditingController commentTextEditingController = TextEditingController();
  String? addressTextError;
  String? contactNumberTextError;

  @override
  void dispose() {
    addressTextEditingController.dispose();
    contactNumberTextEditingController.dispose();
    commentTextEditingController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).extension<AgroMarketThemeExtension>();

    return BlocProvider(
      create: (context) => DeliveryBloc(),
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),

        child: Scaffold(
          backgroundColor: AgroMarketColorPalette.backgroundGradientColor,
          appBar: CustomAppBar(
            title: 'Доставка',
            leftWidget: GestureDetector(
              onTap: () => context.router.pop(),
              child: SvgPicture.asset(AppIcons.arrowBackIcon),
            ),
          ),
          body: BlocConsumer<DeliveryBloc, DeliveryState>(
            listener: (context, state) {
              if (state.isDelivered && state.loadState == LoadState.loaded) {
                context.read<ShoppingBasketBloc>().add(InitShoppingBasketState());

                context.router.push(const SuccessDeliveryRoute1());
              } else if (state.loadState == LoadState.failure) {
                context.read<DeliveryBloc>().add(InitDeliverProductsState());
                context.router.push(const FailureDeliveryRoute());
              }
            },
            builder: (context, state) {
              switch (state.loadState) {
                case LoadState.loading:
                  return CustomLoadingWidget();
                case LoadState.failure:
                  return CustomErrorWidget(errorMsg: state.errorMsg);
                case LoadState.loaded:
                  return Padding(
                    padding: AppPaddings.pageContentPadding,
                    child: Padding(
                      padding: AppPaddings.deliveryScreenOnlyTopPadding,
                      child: Column(
                        children: [
                          CustomTextField(
                            errorMsg: addressTextError,
                            textEditingController: addressTextEditingController,
                            textFieldTopic: 'Укажите адрес доставки *',
                          ),
                          HeightBox(height: AppDimensions.customTextFieldHeight),
                          CustomTextField(
                            errorMsg: contactNumberTextError,
                            keyboardType: TextInputType.numberWithOptions(),
                            textEditingController: contactNumberTextEditingController,
                            textFieldTopic: 'Укажите номер телефона *',
                            prefixWidget: SizedBox(
                              width: AppDimensions.enormousWidth,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(AppIcons.textFieldPhoneIcon, width: AppDimensions.bigMediumWidth),
                                  const SizedBox(width: AppDimensions.tiniestWidth),
                                  Text('+7', style: textTheme!.textFildPhoneNumberTextStyle),
                                ],
                              ),
                            ),
                          ),
                          HeightBox(height: AppDimensions.customTextFieldHeight),
                          CustomTextField(
                            textEditingController: commentTextEditingController,
                            textFieldTopic: 'Комментарий',
                          ),
                        ],
                      ),
                    ),
                  );
              }
            },
          ),
          bottomNavigationBar: Padding(
            padding: AppPaddings.bottomNavBarPadding,
            child: BlocBuilder<DeliveryBloc, DeliveryState>(
              builder: (context, state) {
                if (state.loadState == LoadState.loading) {
                  return SizedBox.shrink();
                }
                return BlocBuilder<ShoppingBasketBloc, ShoppingBasketState>(
                  builder: (context, shoppingBasketState) {
                    return PrimaryButton(

                      textStyle: textTheme!.primaryButtonTextStyle,
                      title: 'Заказать',
                      onPressed: () {
                        final isAddressTextEmpty = addressTextEditingController.text.trim().isEmpty;
                        final isPhoneNumberTextEmpty = contactNumberTextEditingController.text
                            .trim()
                            .isEmpty;

                        setState(() {
                          addressTextError = isAddressTextEmpty
                              ? 'Адрес не может быть пустым'
                              : null;
                          contactNumberTextError = isPhoneNumberTextEmpty
                              ? 'Номер телефона не может быть пустым'
                              : null;
                        });

                        if (!isAddressTextEmpty && !isPhoneNumberTextEmpty) {
                          context.read<DeliveryBloc>().add(
                            DeliverProducts(
                              products: shoppingBasketState.basketProducts,
                              deliveryDetails: DeliveryDetailsViewModel(
                                address: '',
                                comments: commentTextEditingController.text,
                                contactNumber: commentTextEditingController.text,
                                pickupAddress: '',
                              ),
                            ),
                          );
                        }
                      },
                    );
                  },
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
