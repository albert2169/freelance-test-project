import 'package:agro_market/presentation/custom/enums/load_state_enum.dart';
import 'package:agro_market/presentation/models/delivery_details_view_model.dart';
import 'package:agro_market/presentation/models/product_view_model.dart';
import 'package:equatable/equatable.dart';

class DeliveryState extends Equatable {
  final List<Map<String, ProductViewModel>> basketProducts;
  final LoadState loadState;
  final String errorMsg;
  final double totalPrice;
  final DeliveryDetailsViewModel deliveryDetails;
  final bool isDelivered;

  const DeliveryState({
    required this.basketProducts,
    required this.loadState,
    required this.errorMsg,
    required this.totalPrice,
    required this.deliveryDetails,
    required this.isDelivered,
  });

  DeliveryState copyWith({
    List<Map<String, ProductViewModel>>? basketProducts,
    LoadState? loadState,
    String? errorMsg,
    double? totalPrice,
    DeliveryDetailsViewModel? deliveryDetails,
    bool? isDelivered,
  }) {
    return DeliveryState(
      basketProducts: basketProducts ?? this.basketProducts,
      loadState: loadState ?? this.loadState,
      errorMsg: errorMsg ?? this.errorMsg,
      totalPrice: totalPrice ?? this.totalPrice,
      deliveryDetails: deliveryDetails ?? this.deliveryDetails,
      isDelivered: isDelivered ?? this.isDelivered,
    );
  }

  @override
  List<Object> get props => [basketProducts, loadState, errorMsg, totalPrice, deliveryDetails, isDelivered];
}
