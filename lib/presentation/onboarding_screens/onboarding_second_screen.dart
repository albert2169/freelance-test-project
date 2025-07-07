import 'package:agro_market/presentation/app_constatns/app_images.dart';
import 'package:agro_market/presentation/app_constatns/app_padding.dart';
import 'package:agro_market/presentation/custom/custom_widgets/primary_button.dart';
import 'package:agro_market/presentation/theme/agro_market_theme.dart';
import 'package:agro_market/presentation/theme/text/agro_market_theme_extension.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class OnboardingSecondScreen extends StatelessWidget {
  const OnboardingSecondScreen({super.key});

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
                  Image.asset(AppImages.onboardingSecondScreenImage, width: 312, height: 200),
                  const SizedBox(height: 70),
                  Text('Добро пожаловать', style: textTheme.introTitleTextStyle),
                  const SizedBox(height: 40),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin et ',
                    textAlign: TextAlign.center,
                    style: textTheme.introBodyTextStyle,
                  ),
                ],
              ),
            ),
            Padding(
              padding: AppPaddings.primaryButtonBottomPadding,
              child: PrimaryButton(title: 'Далее', onPressed: () {
              }),
            ),
          ],
        ),
      ),
    );
  }
}
