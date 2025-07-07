import 'package:agro_market/router/app_router.gr.dart';
import 'package:auto_route/auto_route.dart';


@AutoRouterConfig()
class AppRouter extends RootStackRouter {
   @override
  List<AutoRoute> get routes => [
    AutoRoute(page: HomeRoute.page),
    AutoRoute(page: OnboardingFirstRoute.page, initial: true),
    AutoRoute(page: OnboardingSecondRoute.page),
  ];
}
