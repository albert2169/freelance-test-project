import 'package:agro_market/router/app_router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

@RoutePage()

class OnboardingFirstScreen extends StatelessWidget {
  const OnboardingFirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text('Finish Onboarding'),
          onPressed: () async {
            final prefs = await SharedPreferences.getInstance();
            await prefs.setBool('onboarding_done', true);
            context.router.replace(const HomeRoute());
          },
        ),
      ),
    );
  }
}
