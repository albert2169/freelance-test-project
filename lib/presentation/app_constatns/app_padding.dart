import 'package:agro_market/presentation/app_constatns/app_dimensions.dart';
import 'package:flutter/material.dart';

abstract class AppPaddings {
  const AppPaddings._();


  static final pageContentPadding = EdgeInsets.only(left: AppDimensions.contentPaddingSize, right: AppDimensions.contentPaddingSize);
  static final primaryButtonBottomPadding  = const EdgeInsets.only(bottom: AppDimensions.primaryButtonBottomPaddingHeight);
}

