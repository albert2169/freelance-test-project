// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:agro_market/presentation/custom/enums/prouduct_category_enum.dart'
    as _i15;
import 'package:agro_market/presentation/models/product_view_model.dart'
    as _i16;
import 'package:agro_market/presentation/screens/delivery_screens/delivery_screen/delivery_screen.dart'
    as _i1;
import 'package:agro_market/presentation/screens/delivery_screens/self_pickup_screen/self_pickup_screen.dart'
    as _i9;
import 'package:agro_market/presentation/screens/delivery_screens/success_delivery_screens/failure_delivery_screen.dart'
    as _i2;
import 'package:agro_market/presentation/screens/delivery_screens/success_delivery_screens/success_delivery_screen_1.dart'
    as _i11;
import 'package:agro_market/presentation/screens/delivery_screens/success_delivery_screens/success_delivery_screen_2.dart'
    as _i12;
import 'package:agro_market/presentation/screens/onboarding_screens/onboarding_first_screen.dart'
    as _i3;
import 'package:agro_market/presentation/screens/onboarding_screens/onboarding_second_screen.dart'
    as _i4;
import 'package:agro_market/presentation/screens/product_catalogue/product_catalogue.dart'
    as _i5;
import 'package:agro_market/presentation/screens/product_categories/product_categories.dart'
    as _i6;
import 'package:agro_market/presentation/screens/product_screen/product_screen.dart'
    as _i7;
import 'package:agro_market/presentation/screens/product_subcotegories_screen.dart/product_subcategories_screen.dart'
    as _i8;
import 'package:agro_market/presentation/screens/shopping_basket_screen/shopping_basket_screen.dart'
    as _i10;
import 'package:auto_route/auto_route.dart' as _i13;
import 'package:flutter/material.dart' as _i14;

/// generated route for
/// [_i1.DeliveryScreen]
class DeliveryRoute extends _i13.PageRouteInfo<void> {
  const DeliveryRoute({List<_i13.PageRouteInfo>? children})
    : super(DeliveryRoute.name, initialChildren: children);

  static const String name = 'DeliveryRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i1.DeliveryScreen();
    },
  );
}

/// generated route for
/// [_i2.FailureDeliveryScreen]
class FailureDeliveryRoute extends _i13.PageRouteInfo<void> {
  const FailureDeliveryRoute({List<_i13.PageRouteInfo>? children})
    : super(FailureDeliveryRoute.name, initialChildren: children);

  static const String name = 'FailureDeliveryRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i2.FailureDeliveryScreen();
    },
  );
}

/// generated route for
/// [_i3.OnboardingFirstScreen]
class OnboardingFirstRoute extends _i13.PageRouteInfo<void> {
  const OnboardingFirstRoute({List<_i13.PageRouteInfo>? children})
    : super(OnboardingFirstRoute.name, initialChildren: children);

  static const String name = 'OnboardingFirstRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i3.OnboardingFirstScreen();
    },
  );
}

/// generated route for
/// [_i4.OnboardingSecondScreen]
class OnboardingSecondRoute extends _i13.PageRouteInfo<void> {
  const OnboardingSecondRoute({List<_i13.PageRouteInfo>? children})
    : super(OnboardingSecondRoute.name, initialChildren: children);

  static const String name = 'OnboardingSecondRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i4.OnboardingSecondScreen();
    },
  );
}

/// generated route for
/// [_i5.ProductCatalogue]
class ProductCatalogue extends _i13.PageRouteInfo<void> {
  const ProductCatalogue({List<_i13.PageRouteInfo>? children})
    : super(ProductCatalogue.name, initialChildren: children);

  static const String name = 'ProductCatalogue';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i5.ProductCatalogue();
    },
  );
}

/// generated route for
/// [_i6.ProductCategoriesScreen]
class ProductCategoriesRoute
    extends _i13.PageRouteInfo<ProductCategoriesRouteArgs> {
  ProductCategoriesRoute({
    _i14.Key? key,
    required _i15.ProductCategory selectedCategory,
    List<_i13.PageRouteInfo>? children,
  }) : super(
         ProductCategoriesRoute.name,
         args: ProductCategoriesRouteArgs(
           key: key,
           selectedCategory: selectedCategory,
         ),
         initialChildren: children,
       );

  static const String name = 'ProductCategoriesRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ProductCategoriesRouteArgs>();
      return _i6.ProductCategoriesScreen(
        key: args.key,
        selectedCategory: args.selectedCategory,
      );
    },
  );
}

class ProductCategoriesRouteArgs {
  const ProductCategoriesRouteArgs({this.key, required this.selectedCategory});

  final _i14.Key? key;

  final _i15.ProductCategory selectedCategory;

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
/// [_i7.ProductScreen]
class ProductRoute extends _i13.PageRouteInfo<ProductRouteArgs> {
  ProductRoute({
    _i14.Key? key,
    required _i16.ProductViewModel product,
    List<_i13.PageRouteInfo>? children,
  }) : super(
         ProductRoute.name,
         args: ProductRouteArgs(key: key, product: product),
         initialChildren: children,
       );

  static const String name = 'ProductRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ProductRouteArgs>();
      return _i7.ProductScreen(key: args.key, product: args.product);
    },
  );
}

class ProductRouteArgs {
  const ProductRouteArgs({this.key, required this.product});

  final _i14.Key? key;

  final _i16.ProductViewModel product;

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
/// [_i8.ProductSubcategoriesScreen]
class ProductSubcategoriesRoute
    extends _i13.PageRouteInfo<ProductSubcategoriesRouteArgs> {
  ProductSubcategoriesRoute({
    _i14.Key? key,
    required _i15.ProductCategory productCategory,
    List<_i13.PageRouteInfo>? children,
  }) : super(
         ProductSubcategoriesRoute.name,
         args: ProductSubcategoriesRouteArgs(
           key: key,
           productCategory: productCategory,
         ),
         initialChildren: children,
       );

  static const String name = 'ProductSubcategoriesRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ProductSubcategoriesRouteArgs>();
      return _i8.ProductSubcategoriesScreen(
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

  final _i14.Key? key;

  final _i15.ProductCategory productCategory;

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
/// [_i9.SelfPickupScreen]
class SelfPickupRoute extends _i13.PageRouteInfo<void> {
  const SelfPickupRoute({List<_i13.PageRouteInfo>? children})
    : super(SelfPickupRoute.name, initialChildren: children);

  static const String name = 'SelfPickupRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i9.SelfPickupScreen();
    },
  );
}

/// generated route for
/// [_i10.ShoppingBasketScreen]
class ShoppingBasketRoute extends _i13.PageRouteInfo<void> {
  const ShoppingBasketRoute({List<_i13.PageRouteInfo>? children})
    : super(ShoppingBasketRoute.name, initialChildren: children);

  static const String name = 'ShoppingBasketRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i10.ShoppingBasketScreen();
    },
  );
}

/// generated route for
/// [_i11.SuccessDeliveryScreen1]
class SuccessDeliveryRoute1 extends _i13.PageRouteInfo<void> {
  const SuccessDeliveryRoute1({List<_i13.PageRouteInfo>? children})
    : super(SuccessDeliveryRoute1.name, initialChildren: children);

  static const String name = 'SuccessDeliveryRoute1';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i11.SuccessDeliveryScreen1();
    },
  );
}

/// generated route for
/// [_i12.SuccessDeliveryScreen2]
class SuccessDeliveryRoute2 extends _i13.PageRouteInfo<void> {
  const SuccessDeliveryRoute2({List<_i13.PageRouteInfo>? children})
    : super(SuccessDeliveryRoute2.name, initialChildren: children);

  static const String name = 'SuccessDeliveryRoute2';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i12.SuccessDeliveryScreen2();
    },
  );
}
