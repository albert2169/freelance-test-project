import 'package:agro_market/presentation/app_constatns/app_dimensions.dart';
import 'package:flutter/material.dart';

abstract class AppPaddings {
  const AppPaddings._();


  static final pageContentPadding = EdgeInsets.only(left: AppDimensions.contentPaddingSize, right: AppDimensions.contentPaddingSize);
  static final primaryButtonBottomPadding  = const EdgeInsets.only(bottom: AppDimensions.primaryButtonBottomPaddingHeight);
  static final productCardPadding  = const EdgeInsets.only(top: 16.36,left: 13, right:  14.29, bottom: 21.38);

  static final categoryItemPadding  = const EdgeInsets.symmetric(vertical: 8);
  static final productCategoriesTopPadding = const EdgeInsets.only(top: 49);
  static final deliveryScreenOnlyTopPadding = const EdgeInsets.only(top: 41);


  static final bottomNavBarPadding = const EdgeInsets.only(bottom: 40, left: 20, right: 20, top: 20);
  static final smallBottomPadding = const EdgeInsets.only(bottom: 2.0);
  static final normalBottomPadding = const EdgeInsets.only(bottom: 8);
  static final productImageSelectionPadding = const EdgeInsets.only(left: 20, top: 35, bottom: 35);
  static final productPackagingSectionRightMarginPadding = const EdgeInsets.only(right: 8);
  static final productPackagingSectionSymmetricPadding = const EdgeInsets.symmetric(horizontal: 12, vertical: 8);
}

