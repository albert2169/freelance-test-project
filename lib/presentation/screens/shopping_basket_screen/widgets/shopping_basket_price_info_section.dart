import 'package:agro_market/presentation/custom/custom_widgets/height_box.dart';
import 'package:agro_market/presentation/screens/shopping_basket_screen/widgets/shopping_basket_price_info_item.dart';
import 'package:flutter/material.dart';

class ShoppingBasketPriceInfoSection extends StatelessWidget {
  final double totalPrice;
  final double? deliverPrice;
  const ShoppingBasketPriceInfoSection({super.key, required this.totalPrice, this.deliverPrice});

  @override
  Widget build(BuildContext context) {
    final isDeliveryPriceAvailable = (deliverPrice != null && deliverPrice != 0);
    return Column(
      children: [
        ShoppingBasketPriceInfoItem(priceInfo: 'Сумма', price: totalPrice.toStringAsFixed(2)),
        HeightBox(height: 8),
        ShoppingBasketPriceInfoItem(
          priceInfo: 'Стоимость доставки:',
          price: isDeliveryPriceAvailable ?  deliverPrice!.toStringAsFixed(2) : null,
        ),
        HeightBox(height: 8),
        ShoppingBasketPriceInfoItem(
          priceInfo: 'Всего:',
          price: isDeliveryPriceAvailable
              ? (deliverPrice! + totalPrice).toStringAsFixed(2)
              : totalPrice.toStringAsFixed(2),
        ),
      ],
    );
  }

}
