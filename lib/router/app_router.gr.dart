// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:agro_market/presentation/custom/enums/prouduct_category_enum.dart'
    as _i10;
import 'package:agro_market/presentation/models/product_view_model.dart'
    as _i11;
import 'package:agro_market/presentation/screens/onboarding_screens/onboarding_first_screen.dart'
    as _i1;
import 'package:agro_market/presentation/screens/onboarding_screens/onboarding_second_screen.dart'
    as _i2;
import 'package:agro_market/presentation/screens/product_catalogue/product_catalogue.dart'
    as _i3;
import 'package:agro_market/presentation/screens/product_categories/product_categories.dart'
    as _i4;
import 'package:agro_market/presentation/screens/product_screen/product_screen.dart'
    as _i5;
import 'package:agro_market/presentation/screens/product_subcotegories_screen.dart/product_subcategories_screen.dart'
    as _i6;
import 'package:agro_market/presentation/screens/shopping_basket_screen/shopping_basket_screen.dart'
    as _i7;
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;

/// generated route for
/// [_i1.OnboardingFirstScreen]
class OnboardingFirstRoute extends _i8.PageRouteInfo<void> {
  const OnboardingFirstRoute({List<_i8.PageRouteInfo>? children})
    : super(OnboardingFirstRoute.name, initialChildren: children);

  static const String name = 'OnboardingFirstRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i1.OnboardingFirstScreen();
    },
  );
}

/// generated route for
/// [_i2.OnboardingSecondScreen]
class OnboardingSecondRoute extends _i8.PageRouteInfo<void> {
  const OnboardingSecondRoute({List<_i8.PageRouteInfo>? children})
    : super(OnboardingSecondRoute.name, initialChildren: children);

  static const String name = 'OnboardingSecondRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i2.OnboardingSecondScreen();
    },
  );
}

/// generated route for
/// [_i3.ProductCatalogue]
class ProductCatalogue extends _i8.PageRouteInfo<void> {
  const ProductCatalogue({List<_i8.PageRouteInfo>? children})
    : super(ProductCatalogue.name, initialChildren: children);

  static const String name = 'ProductCatalogue';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i3.ProductCatalogue();
    },
  );
}

/// generated route for
/// [_i4.ProductCategoriesScreen]
class ProductCategoriesRoute
    extends _i8.PageRouteInfo<ProductCategoriesRouteArgs> {
  ProductCategoriesRoute({
    _i9.Key? key,
    required _i10.ProductCategory selectedCategory,
    List<_i8.PageRouteInfo>? children,
  }) : super(
         ProductCategoriesRoute.name,
         args: ProductCategoriesRouteArgs(
           key: key,
           selectedCategory: selectedCategory,
         ),
         initialChildren: children,
       );

  static const String name = 'ProductCategoriesRoute';

  static _i8.PageInfo page = _i8.PageInfo(
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

  final _i9.Key? key;

  final _i10.ProductCategory selectedCategory;

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
/// [_i5.ProductScreen]
class ProductRoute extends _i8.PageRouteInfo<ProductRouteArgs> {
  ProductRoute({
    _i9.Key? key,
    required _i11.ProductViewModel product,
    List<_i8.PageRouteInfo>? children,
  }) : super(
         ProductRoute.name,
         args: ProductRouteArgs(key: key, product: product),
         initialChildren: children,
       );

  static const String name = 'ProductRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ProductRouteArgs>();
      return _i5.ProductScreen(key: args.key, product: args.product);
    },
  );
}

class ProductRouteArgs {
  const ProductRouteArgs({this.key, required this.product});

  final _i9.Key? key;

  final _i11.ProductViewModel product;

  @override
  String toString() {
    return 'ProductRouteArgs{key: $key, product: $product}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ProductRouteArgs) return false;
    return key == other.key && product == other.product;
  }

  @override
  int get hashCode => key.hashCode ^ product.hashCode;
}

/// generated route for
/// [_i6.ProductSubcategoriesScreen]
class ProductSubcategoriesRoute
    extends _i8.PageRouteInfo<ProductSubcategoriesRouteArgs> {
  ProductSubcategoriesRoute({
    _i9.Key? key,
    required _i10.ProductCategory productCategory,
    List<_i8.PageRouteInfo>? children,
  }) : super(
         ProductSubcategoriesRoute.name,
         args: ProductSubcategoriesRouteArgs(
           key: key,
           productCategory: productCategory,
         ),
         initialChildren: children,
       );

  static const String name = 'ProductSubcategoriesRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ProductSubcategoriesRouteArgs>();
      return _i6.ProductSubcategoriesScreen(
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

  final _i9.Key? key;

  final _i10.ProductCategory productCategory;

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

/// generated route for
/// [_i7.ShoppingBasketScreen]
class ShoppingBasketRoute extends _i8.PageRouteInfo<void> {
  const ShoppingBasketRoute({List<_i8.PageRouteInfo>? children})
    : super(ShoppingBasketRoute.name, initialChildren: children);

  static const String name = 'ShoppingBasketRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i7.ShoppingBasketScreen();
    },
  );
}
