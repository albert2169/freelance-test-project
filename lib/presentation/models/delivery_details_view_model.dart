
import 'package:flutter/material.dart';

@immutable
class DeliveryDetailsViewModel {
  final String address;
  final String contactNumber;
  final String comments;
  final String pickupAddress;
  const DeliveryDetailsViewModel({
    required this.address, required this.comments, required this.contactNumber, required this.pickupAddress
  });

  // DeliveryDetailsViewModel copyWith({
  
  // }) {
  //   return DeliveryDetailsViewModel(
  //   );
  // }



  // @override
  // bool operator ==(Object other) {
  //   if (identical(this, other)) return true;

  //   return other is DeliveryDetailsViewModel &&
  //       other.id == id &&
  //       other.name == name &&
  //       other.priceInfo == priceInfo &&
  //       other.displayImage == displayImage &&
  //       other.description == description &&
  //       other.productCategory == productCategory;
  // }

  // @override
  // int get hashCode {
  //   return id.hashCode ^
  //       name.hashCode ^
  //       priceInfo.hashCode ^
  //       displayImage.hashCode ^
  //       description.hashCode ^
  //       productCategory.hashCode;
  // }
}
