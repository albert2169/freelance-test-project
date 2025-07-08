import 'package:agro_market/presentation/app_constatns/app_dimensions.dart';
import 'package:agro_market/presentation/app_constatns/app_images.dart';
import 'package:agro_market/presentation/app_constatns/app_padding.dart';
import 'package:agro_market/presentation/app_constatns/text_constants/onboarding_text_constants.dart';
import 'package:agro_market/presentation/custom/custom_widgets/height_box.dart';
import 'package:agro_market/presentation/custom/custom_widgets/primary_button.dart';
import 'package:agro_market/presentation/theme/colors/agro_market_color_palette.dart';
import 'package:agro_market/presentation/theme/text/agro_market_theme_extension.dart';
import 'package:agro_market/router/app_router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class OnboardingSecondScreen extends StatelessWidget {
  const OnboardingSecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).extension<AgroMarketThemeExtension>();

    return Scaffold(
      backgroundColor: AgroMarketColorPalette.backgroundGradientColor,
      body: Container(
        padding: AppPaddings.pageContentPadding,
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    AppImages.onboardingSecondScreenImage,
                    width: AppDimensions.onboardingSecondScreenImageSize.width,
                    height: AppDimensions.onboardingSecondScreenImageSize.height,
                  ),
                  const HeightBox(height: AppDimensions.bigHeight),
                  Text(OnboardingTextConstants.titleText, style: textTheme!.introTitleTextStyle),
                  const HeightBox(height: AppDimensions.normalHeight),
                  Text(
                    OnboardingTextConstants.bodyText,
                    textAlign: TextAlign.center,
                    style: textTheme.introBodyTextStyle,
                  ),
                ],
              ),
            ),
            Padding(
              padding: AppPaddings.primaryButtonBottomPadding,
              child: PrimaryButton(
                textStyle: textTheme.primaryButtonTextStyle,

                title: OnboardingTextConstants.buttonText,
                onPressed: () {
                  context.router.replace(ProductCatalogue());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
