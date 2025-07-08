import 'package:agro_market/presentation/app_constatns/app_images.dart';
import 'package:flutter/material.dart';

enum ProductCategory {
  seeds([
    {'name': 'Цветочные семена', 'path': AppImages.productCategorySeeds},
    {'name': 'Овощные семена', 'path': AppImages.productCategorySeeds},
    {'name': 'Семена трав', 'path': AppImages.productCategorySeeds},
  ]),
  plants([
    {'name': 'Комнатные растения', 'path': AppImages.productCategoryPlant},
    {'name': 'Уличные растения', 'path': AppImages.productCategoryPlant},
    {'name': 'Цветущие растения', 'path': AppImages.productCategoryPlant},
  ]),
  agriculture([
    {'name': 'Почвосмеси', 'path': AppImages.productCategoryAgriculture},
    {'name': 'Удобрения', 'path': AppImages.productCategoryAgriculture},
    {'name': 'Средства от вредителей', 'path': AppImages.productCategoryAgriculture},
  ]),
  forest([
    {'name': 'Саженцы деревьев', 'path': AppImages.productCategoryForest},
    {'name': 'Кустарники', 'path': AppImages.productCategoryForest},
    {'name': 'Плодовые деревья', 'path': AppImages.productCategoryForest},
  ]),
  landscape([
    {'name': 'Газон', 'path': AppImages.productCategoryLandscape},
    {'name': 'Декоративные камни', 'path': AppImages.productCategoryLandscape},
    {'name': 'Мульча', 'path': AppImages.productCategoryLandscape},
  ]),
  other([
    {'name': 'Общие товары', 'path': AppImages.productCategoryLandscape},
  ]),
  none([]);

  final List<Map<String, String>> subcategories;

  const ProductCategory(this.subcategories);
}


extension ProductCategoryExtension on ProductCategory {
  String get name {
    switch (this) {
      case ProductCategory.seeds:
        return 'Семена';
      case ProductCategory.plants:
        return 'Растения';
      case ProductCategory.agriculture:
        return 'Грунт для растения';
      case ProductCategory.forest:
        return 'Для деревьев и саженцев';
      case ProductCategory.landscape:
        return 'Торф фасованный';
      case ProductCategory.none:
        return 'ничто';
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
      case ProductCategory.agriculture:
        return Image.asset(AppImages.productCategoryAgriculture);
      case ProductCategory.forest:
        return Image.asset(AppImages.productCategoryForest);
      case ProductCategory.landscape:
        return Image.asset(AppImages.productCategoryLandscape);
      case ProductCategory.none:
        return Image.asset(AppImages.productCategorySeeds);
      case ProductCategory.other:
        return Image.asset(AppImages.productCategorySeeds);
    }
  }
}