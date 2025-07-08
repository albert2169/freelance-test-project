
import 'package:agro_market/presentation/custom/enums/packaging_type_enum.dart';
import 'package:agro_market/presentation/custom/enums/prouduct_category_enum.dart';
import 'package:flutter/material.dart';

@immutable
class ProductViewModel {
  final String id;
  final String name;
  final String compoundDescription;
final Map<PackagingType, Map<String, double>> priceInfo;
  final Image? displayImage;
  final List<Image> previewImages;
  final String description;
  final ProductCategory productCategory;
  final PackagingType packagingType;

  const ProductViewModel({
    this.previewImages = const [],
    this.id = 'default_id',
    this.name = 'Безымянный Продукт',
    this.priceInfo = const {},
    this.displayImage,
    this.description = '',
    this.productCategory = ProductCategory.none,
    this.packagingType = PackagingType.amount,
    this.compoundDescription = '',
  });

  ProductViewModel copyWith({
    String? id,
    String? name,
    Map<PackagingType, Map<String, double>>? pricePerUnit,
    Image? displayImage,
    String? description,
    ProductCategory? productCategory,
    PackagingType? packagingType,

  }) {
    return ProductViewModel(
      id: id ?? this.id,
      name: name ?? this.name,
      priceInfo: pricePerUnit ?? this.priceInfo,
      displayImage: displayImage ?? this.displayImage,
      description: description ?? this.description,
      productCategory: productCategory ?? this.productCategory,
      packagingType: packagingType ?? this.packagingType
    );
  }

  @override
  String toString() {
    return 'Product(id: $id, name: $name, pricePerUnit: $priceInfo, displayImage: $displayImage, description: $description, produc )';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ProductViewModel &&
        other.id == id &&
        other.name == name &&
        other.priceInfo == priceInfo &&
        other.displayImage == displayImage &&
        other.description == description &&
        other.productCategory == productCategory;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        priceInfo.hashCode ^
        displayImage.hashCode ^
        description.hashCode ^
        productCategory.hashCode;
  }
}
