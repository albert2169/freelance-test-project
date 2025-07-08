import 'package:agro_market/presentation/app_constatns/app_images.dart';
import 'package:agro_market/presentation/custom/enums/packaging_type_enum.dart';
import 'package:agro_market/presentation/custom/enums/prouduct_category_enum.dart';
import 'package:agro_market/presentation/models/product_view_model.dart';
import 'package:flutter/material.dart';

final productsFetched = <ProductViewModel>[
  ProductViewModel(
    priceInfo: {
      PackagingType.liter: {'1л': 349.99, '5л': 400, '10л': 800, '20л': 1500},
    },
    description: """• отсутствие опасной микрофлоры
• поддержание заданной кислотности
• высокая приживаемость
• отсутствие опасной микрофлоры
• поддержание заданной кислотности
• высокая приживаемость
• отсутствие опасной микрофлоры
• поддержание заданной кислотности
• высокая приживаемость
• отсутствие опасной микрофлоры
• поддержание заданной кислотности
• высокая приживаемость""",
    compoundDescription: """• отсутствие опасной микрофлоры
• поддержание заданной кислотности
• высокая приживаемость""",

    name: 'ЛЮПИН МНОГОЛЕТНИЙ',
    productCategory: ProductCategory.plants,
    packagingType: PackagingType.liter,
    displayImage: Image.asset(AppImages.productSecondImage),
    previewImages: [
      Image.asset(AppImages.previewImageOne),
      Image.asset(AppImages.previewImageTwo),
      Image.asset(AppImages.previewImageThree),
      Image.asset(AppImages.previewImageFour),
    ],
  ),
  ProductViewModel(
    priceInfo: {
      PackagingType.amount: {'1': 2000},
    },
    name: 'CЕЛЬДЕРЕЙ ПРАЖСКИЙ ГИГАНТ',
    productCategory: ProductCategory.agriculture,
    packagingType: PackagingType.amount,
    displayImage: Image.asset(AppImages.productFirstImage),
    previewImages: [
      Image.asset(AppImages.previewImageOne),
      Image.asset(AppImages.previewImageTwo),
      Image.asset(AppImages.previewImageThree),
      Image.asset(AppImages.previewImageFour),
    ],
  ),
  ProductViewModel(
    priceInfo: {
      PackagingType.amount: {'1': 200},
    },
    name: 'CЕЛЬДЕРЕЙ ПРАЖСКИЙ ГИГАНТ',
    productCategory: ProductCategory.agriculture,
    packagingType: PackagingType.amount,
    displayImage: Image.asset(AppImages.productFirstImage),
    previewImages: [
      Image.asset(AppImages.previewImageOne),
      Image.asset(AppImages.previewImageTwo),
      Image.asset(AppImages.previewImageThree),
      Image.asset(AppImages.previewImageFour),
    ],
  ),
  ProductViewModel(
    priceInfo: {
      PackagingType.amount: {'1': 1999},
    },
    name: 'CЕЛЬДЕРЕЙ ПРАЖСКИЙ ГИГАНТ',
    productCategory: ProductCategory.agriculture,
    packagingType: PackagingType.amount,
    displayImage: Image.asset(AppImages.productFirstImage),
    previewImages: [
      Image.asset(AppImages.previewImageOne),
      Image.asset(AppImages.previewImageTwo),
      Image.asset(AppImages.previewImageThree),
      Image.asset(AppImages.previewImageFour),
    ],
  ),
  ProductViewModel(
    priceInfo: {
      PackagingType.amount: {'1': 1999},
    },
    name: 'CЕЛЬДЕРЕЙ ПРАЖСКИЙ ГИГАНТ',
    productCategory: ProductCategory.agriculture,
    packagingType: PackagingType.amount,
    displayImage: Image.asset(AppImages.productFirstImage),
    previewImages: [
      Image.asset(AppImages.previewImageOne),
      Image.asset(AppImages.previewImageTwo),
      Image.asset(AppImages.previewImageThree),
      Image.asset(AppImages.previewImageFour),
    ],
  ),
  ProductViewModel(
    priceInfo: {
      PackagingType.amount: {'1': 28900},
    },
    name: 'CЕЛЬДЕРЕЙ ПРАЖСКИЙ ГИГАНТ',
    productCategory: ProductCategory.agriculture,
    packagingType: PackagingType.amount,
    displayImage: Image.asset(AppImages.productFirstImage),
    previewImages: [
      Image.asset(AppImages.previewImageOne),
      Image.asset(AppImages.previewImageTwo),
      Image.asset(AppImages.previewImageThree),
      Image.asset(AppImages.previewImageFour),
    ],
  ),

  ProductViewModel(
    priceInfo: {
      PackagingType.liter: {'1л': 500, '5л': 2300, '10л': 4600, '20л': 9000},
    },
    name: 'ЛЮПИН МНОГОЛЕТНИЙ',
    productCategory: ProductCategory.plants,
    packagingType: PackagingType.liter,
    displayImage: Image.asset(AppImages.productSecondImage),
    previewImages: [
      Image.asset(AppImages.previewImageOne),
      Image.asset(AppImages.previewImageTwo),
      Image.asset(AppImages.previewImageThree),
      Image.asset(AppImages.previewImageFour),
    ],
  ),
  ProductViewModel(
    priceInfo: {
      PackagingType.kg: {'1кг': 500, '5кг': 2300, '10кг': 4600, '20кг': 9000},
    },
    name: 'ЛЮПИН МНОГОЛЕТНИЙ',
    productCategory: ProductCategory.landscape,
    packagingType: PackagingType.kg,
    displayImage: Image.asset(AppImages.productFirstImage),
    previewImages: [
      Image.asset(AppImages.previewImageOne),
      Image.asset(AppImages.previewImageTwo),
      Image.asset(AppImages.previewImageThree),
      Image.asset(AppImages.previewImageFour),
    ],
  ),
  ProductViewModel(
    priceInfo: {
      PackagingType.kg: {'1кг': 500, '5кг': 2300, '10кг': 4600, '20кг': 9000},
    },
    name: 'ЛЮПИН МНОГОЛЕТНИЙ',
    productCategory: ProductCategory.seeds,
    packagingType: PackagingType.kg,
    displayImage: Image.asset(AppImages.productSecondImage),
    previewImages: [
      Image.asset(AppImages.previewImageOne),
      Image.asset(AppImages.previewImageTwo),
      Image.asset(AppImages.previewImageThree),
      Image.asset(AppImages.previewImageFour),
    ],
  ),
  ProductViewModel(
    priceInfo: {
      PackagingType.kg: {'1кг': 500, '5кг': 2300, '10кг': 4600, '20кг': 9000},
    },
    name: 'ЛЮПИН МНОГОЛЕТНИЙ',
    productCategory: ProductCategory.seeds,
    packagingType: PackagingType.kg,
    displayImage: Image.asset(AppImages.productSecondImage),
    previewImages: [
      Image.asset(AppImages.previewImageOne),
      Image.asset(AppImages.previewImageTwo),
      Image.asset(AppImages.previewImageThree),
      Image.asset(AppImages.previewImageFour),
    ],
  ),
  ProductViewModel(
    priceInfo: {
      PackagingType.amount: {'1': 1300},
    },
    name: 'ЛЮПИН МНОГОЛЕТНИЙ',
    productCategory: ProductCategory.forest,
    packagingType: PackagingType.amount,
    displayImage: Image.asset(AppImages.productFirstImage),
    previewImages: [
      Image.asset(AppImages.previewImageOne),
      Image.asset(AppImages.previewImageTwo),
      Image.asset(AppImages.previewImageThree),
      Image.asset(AppImages.previewImageFour),
    ],
  ),
];
