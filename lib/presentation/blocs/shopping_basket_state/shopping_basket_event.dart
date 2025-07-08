import 'package:agro_market/presentation/models/product_view_model.dart';

abstract class ShoppingBasketEvent {}

class FetchBasketProducts extends ShoppingBasketEvent {
  FetchBasketProducts();
}

class RemoveBasketProducts extends ShoppingBasketEvent {
  final int productIdx;
  RemoveBasketProducts({required this.productIdx});
}

class AddProductIntoBasket extends ShoppingBasketEvent {
  final Map<String, ProductViewModel> product;
  AddProductIntoBasket({required this.product});
}
