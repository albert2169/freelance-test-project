import 'package:agro_market/presentation/app_constatns/app_padding.dart';
import 'package:agro_market/presentation/app_constatns/text_constants/main_content_constants.dart';
import 'package:agro_market/presentation/custom/custom_widgets/custom_app_bar.dart';
import 'package:agro_market/presentation/custom/custom_widgets/shopping_cart.dart';
import 'package:agro_market/presentation/home_screen/widgets/app_bar_category_widget.dart';
import 'package:agro_market/presentation/theme/colors/agro_market_color_palette.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        appBar: CustomAppBar(
          title: MainContentConstants.appBarTitle,
          leftWidget: const AppBarCategoryWidget(),
          rightWidget: const ShoppingCart(),
        ),
        body: Container(
          padding: AppPaddings.pageContentPadding,
          decoration: BoxDecoration(
            color: AgroMarketColorPalette.backgroundGradientColor,
          ),
          child: Center(child: Text('Welcome to Home')),
        ),
      ),
    );
  }
}
