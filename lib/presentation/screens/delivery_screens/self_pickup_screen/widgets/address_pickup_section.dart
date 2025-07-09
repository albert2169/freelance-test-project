import 'package:agro_market/presentation/app_constatns/app_images.dart';
import 'package:agro_market/presentation/custom/custom_widgets/height_box.dart';
import 'package:agro_market/presentation/screens/delivery_screens/self_pickup_screen/widgets/address_row_widget.dart';
import 'package:flutter/material.dart';

class AddressPickupSection extends StatelessWidget {
  final String address;
  const AddressPickupSection({super.key, required this.address});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AddressRowWidget(pickupAddress: address),
        HeightBox(height: 25),
        ClipRRect(
          borderRadius: BorderRadius.circular(20),

          child: Image.asset(AppImages.deliveryPickUpAddress1Image),
        ),
      ],
    );
  }
}
