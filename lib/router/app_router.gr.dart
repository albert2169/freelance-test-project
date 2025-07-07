// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:agro_market/presentation/home_screen.dart' as _i1;
import 'package:agro_market/presentation/onboarding_screens/onboarding_first_screen.dart'
    as _i2;
import 'package:agro_market/presentation/onboarding_screens/onboarding_second_screen.dart'
    as _i3;
import 'package:auto_route/auto_route.dart' as _i4;

/// generated route for
/// [_i1.HomeScreen]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute({List<_i4.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i1.HomeScreen();
    },
  );
}

/// generated route for
/// [_i2.OnboardingFirstScreen]
class OnboardingFirstRoute extends _i4.PageRouteInfo<void> {
  const OnboardingFirstRoute({List<_i4.PageRouteInfo>? children})
    : super(OnboardingFirstRoute.name, initialChildren: children);

  static const String name = 'OnboardingFirstRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i2.OnboardingFirstScreen();
    },
  );
}

/// generated route for
/// [_i3.OnboardingSecondScreen]
class OnboardingSecondRoute extends _i4.PageRouteInfo<void> {
  const OnboardingSecondRoute({List<_i4.PageRouteInfo>? children})
    : super(OnboardingSecondRoute.name, initialChildren: children);

  static const String name = 'OnboardingSecondRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i3.OnboardingSecondScreen();
    },
  );
}
