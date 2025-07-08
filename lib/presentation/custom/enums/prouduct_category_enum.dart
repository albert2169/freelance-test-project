import 'package:agro_market/presentation/app_constatns/app_images.dart';
import 'package:flutter/material.dart';

enum ProductCategory {
  seeds,
  plants,
  agriculute,
  forest,
  landscape,
  other; 
}

extension ProductCategoryExtension on ProductCategory {
  String get name {
    switch (this) {
      case ProductCategory.seeds:
        return 'Семена';
      case ProductCategory.plants:
        return 'Растения';
      case ProductCategory.agriculute:
        return 'Грунт для растения';
      case ProductCategory.forest:
        return 'Для деревьев и саженцев';
      case ProductCategory.landscape:
        return 'Торф фасованный';
      case ProductCategory.other:
        return 'Другое';
    }
  }



  Image get image {
    switch (this) {
      case ProductCategory.seeds:
        return Image.asset(AppImages.productCategorySeeds); 
      case ProductCategory.plants:
        return Image.asset(AppImages.productCategoryPlant); 
      case ProductCategory.agriculute:
        return Image.asset(AppImages.productCategoryAgriculture); 
      case ProductCategory.forest:
        return Image.asset(AppImages.productCategoryForest); 
      case ProductCategory.landscape:
        return Image.asset(AppImages.productCategoryLandscape); 
      case ProductCategory.other:
        return Image.asset(AppImages.productCategorySeeds); 
    }
  }
  
}