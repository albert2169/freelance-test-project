import 'package:agro_market/presentation/models/delivery_details_view_model.dart';
import 'package:agro_market/presentation/models/product_view_model.dart';

abstract class DeliveryEvent {}

class DeliverProducts extends DeliveryEvent {
  final DeliveryDetailsViewModel deliveryDetails;
  final List<Map<String, ProductViewModel>> products;
  DeliverProducts({required this.deliveryDetails, required this.products});
}
class InitDeliverProductsState extends DeliveryEvent {
  InitDeliverProductsState();
}



