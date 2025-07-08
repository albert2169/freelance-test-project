// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:agro_market/presentation/custom/enums/prouduct_category_enum.dart'
    as _i8;
import 'package:agro_market/presentation/screens/onboarding_screens/onboarding_first_screen.dart'
    as _i1;
import 'package:agro_market/presentation/screens/onboarding_screens/onboarding_second_screen.dart'
    as _i2;
import 'package:agro_market/presentation/screens/product_catalogue/product_catalogue.dart'
    as _i3;
import 'package:agro_market/presentation/screens/product_categories/product_categories.dart'
    as _i4;
import 'package:agro_market/presentation/screens/product_subcotegories_screen.dart/product_subcategories_screen.dart'
    as _i5;
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

/// generated route for
/// [_i1.OnboardingFirstScreen]
class OnboardingFirstRoute extends _i6.PageRouteInfo<void> {
  const OnboardingFirstRoute({List<_i6.PageRouteInfo>? children})
    : super(OnboardingFirstRoute.name, initialChildren: children);

  static const String name = 'OnboardingFirstRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i1.OnboardingFirstScreen();
    },
  );
}

/// generated route for
/// [_i2.OnboardingSecondScreen]
class OnboardingSecondRoute extends _i6.PageRouteInfo<void> {
  const OnboardingSecondRoute({List<_i6.PageRouteInfo>? children})
    : super(OnboardingSecondRoute.name, initialChildren: children);

  static const String name = 'OnboardingSecondRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i2.OnboardingSecondScreen();
    },
  );
}

/// generated route for
/// [_i3.ProductCatalogue]
class ProductCatalogue extends _i6.PageRouteInfo<void> {
  const ProductCatalogue({List<_i6.PageRouteInfo>? children})
    : super(ProductCatalogue.name, initialChildren: children);

  static const String name = 'ProductCatalogue';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i3.ProductCatalogue();
    },
  );
}

/// generated route for
/// [_i4.ProductCategoriesScreen]
class ProductCategoriesRoute
    extends _i6.PageRouteInfo<ProductCategoriesRouteArgs> {
  ProductCategoriesRoute({
    _i7.Key? key,
    required _i8.ProductCategory selectedCategory,
    List<_i6.PageRouteInfo>? children,
  }) : super(
         ProductCategoriesRoute.name,
         args: ProductCategoriesRouteArgs(
           key: key,
           selectedCategory: selectedCategory,
         ),
         initialChildren: children,
       );

  static const String name = 'ProductCategoriesRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ProductCategoriesRouteArgs>();
      return _i4.ProductCategoriesScreen(
        key: args.key,
        selectedCategory: args.selectedCategory,
      );
    },
  );
}

class ProductCategoriesRouteArgs {
  const ProductCategoriesRouteArgs({this.key, required this.selectedCategory});

  final _i7.Key? key;

  final _i8.ProductCategory selectedCategory;

  @override
  String toString() {
    return 'ProductCategoriesRouteArgs{key: $key, selectedCategory: $selectedCategory}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ProductCategoriesRouteArgs) return false;
    return key == other.key && selectedCategory == other.selectedCategory;
  }

  @override
  int get hashCode => key.hashCode ^ selectedCategory.hashCode;
}

/// generated route for
/// [_i5.ProductSubcategoriesScreen]
class ProductSubcategoriesRoute
    extends _i6.PageRouteInfo<ProductSubcategoriesRouteArgs> {
  ProductSubcategoriesRoute({
    _i7.Key? key,
    required _i8.ProductCategory productCategory,
    List<_i6.PageRouteInfo>? children,
  }) : super(
         ProductSubcategoriesRoute.name,
         args: ProductSubcategoriesRouteArgs(
           key: key,
           productCategory: productCategory,
         ),
         initialChildren: children,
       );

  static const String name = 'ProductSubcategoriesRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ProductSubcategoriesRouteArgs>();
      return _i5.ProductSubcategoriesScreen(
        key: args.key,
        productCategory: args.productCategory,
      );
    },
  );
}

class ProductSubcategoriesRouteArgs {
  const ProductSubcategoriesRouteArgs({
    this.key,
    required this.productCategory,
  });

  final _i7.Key? key;

  final _i8.ProductCategory productCategory;

  @override
  String toString() {
    return 'ProductSubcategoriesRouteArgs{key: $key, productCategory: $productCategory}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ProductSubcategoriesRouteArgs) return false;
    return key == other.key && productCategory == other.productCategory;
  }

  @override
  int get hashCode => key.hashCode ^ productCategory.hashCode;
}
