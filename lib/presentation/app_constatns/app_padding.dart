import 'package:agro_market/presentation/app_constatns/app_dimensions.dart';
import 'package:flutter/material.dart';

abstract class AppPaddings {
  const AppPaddings._();


  static final pageContentPadding = EdgeInsets.only(left: AppDimensions.contentPaddingSize, right: AppDimensions.contentPaddingSize);
  static final primaryButtonBottomPadding  = const EdgeInsets.only(bottom: AppDimensions.primaryButtonBottomPaddingHeight);
  static final productCardPadding  = const EdgeInsets.only(top: 16.36,left: 13, right:  14.29, bottom: 21.38);
}

