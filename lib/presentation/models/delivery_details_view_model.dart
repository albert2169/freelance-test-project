import 'package:flutter/material.dart';

@immutable
class DeliveryDetailsViewModel {
  final String address;
  final String contactNumber;
  final String comments;
  final String pickupAddress;
  const DeliveryDetailsViewModel({
    required this.address,
    required this.comments,
    required this.contactNumber,
    required this.pickupAddress,
  });
}
