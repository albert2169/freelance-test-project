import 'package:agro_market/presentation/app_constatns/app_dimensions.dart';
import 'package:agro_market/presentation/app_constatns/app_icons.dart';
import 'package:agro_market/presentation/app_constatns/app_images.dart';
import 'package:agro_market/presentation/app_constatns/app_padding.dart';
import 'package:agro_market/presentation/custom/custom_widgets/custom_app_bar.dart';
import 'package:agro_market/presentation/custom/custom_widgets/height_box.dart';
import 'package:agro_market/presentation/theme/colors/agro_market_color_palette.dart';
import 'package:agro_market/presentation/theme/text/agro_market_theme_extension.dart';
import 'package:agro_market/router/app_router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class SuccessDeliveryScreen2 extends StatelessWidget {
  const SuccessDeliveryScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).extension<AgroMarketThemeExtension>();

    return Scaffold(
      backgroundColor: AgroMarketColorPalette.backgroundGradientColor,
      appBar: CustomAppBar(
        rightWidget: GestureDetector(
          onTap: () => context.router.replace(ProductCatalogue()),
          child: SvgPicture.asset(AppIcons.closeScreenIcon),
        ),
      ),
      body: Container(
        padding: AppPaddings.pageContentPadding,
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(AppImages.deliverySuccess2Image),
                const HeightBox(height: AppDimensions.bigHeight),
                Text('Заказ оформлен успешно', style: textTheme!.introTitleTextStyle),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
