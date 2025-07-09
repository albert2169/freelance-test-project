import 'package:agro_market/router/app_router.gr.dart';
import 'package:auto_route/auto_route.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: ProductCatalogue.page),
    AutoRoute(page: OnboardingFirstRoute.page, initial: true),
    AutoRoute(page: OnboardingSecondRoute.page),
    AutoRoute(page: ProductCategoriesRoute.page),
    AutoRoute(page: ProductSubcategoriesRoute.page),
    AutoRoute(page: ProductRoute.page),
    AutoRoute(page: ShoppingBasketRoute.page),
    AutoRoute(page: DeliveryRoute.page),
    AutoRoute(page: SelfPickupRoute.page),
    AutoRoute(page: SuccessDeliveryRoute1.page),
    AutoRoute(page: SuccessDeliveryRoute2.page),
    AutoRoute(page: FailureDeliveryRoute.page),
  ];
}
