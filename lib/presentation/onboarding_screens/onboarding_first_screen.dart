import 'package:agro_market/presentation/constatns/app_images.dart';
import 'package:agro_market/presentation/constatns/app_padding.dart';
import 'package:agro_market/presentation/custom/custom_widgets/primary_button.dart';
import 'package:agro_market/presentation/theme/agro_market_theme.dart';
import 'package:agro_market/presentation/theme/text/agro_market_theme_extension.dart';
import 'package:agro_market/router/app_router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class OnboardingFirstScreen extends StatelessWidget {
  const OnboardingFirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).extension<AgroMarketThemeExtension>();

    if (textTheme == null) {
      return const Scaffold(
        body: Center(
          child: Text('Error: AgroMarketThemeExtension not found in context.'),
        ),
      );
    }

    return Scaffold(
      body: Container(
        padding: AppPaddings.pageContentPadding,
        decoration: BoxDecoration(gradient: gradient),
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(AppImages.onboardingFirstScreenImage, width: 226, height: 226),
                  const SizedBox(height: 70),
                  Text('Добро пожаловать', style: textTheme.introTitleTextStyle),
                  const SizedBox(height: 40),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin et',
                    textAlign: TextAlign.center,
                    style: textTheme.introBodyTextStyle,
                  ),
                ],
              ),
            ),
            Padding(
              padding: AppPaddings.primaryButtonBottomPadding,
              child: PrimaryButton(title: 'Далее', onPressed: () {
                 context.router.replace(OnboardingSecondRoute());
              }),
            ),
          ],
        ),
      ),
    );
  }
}
