import 'package:agro_market/presentation/models/product_view_model.dart';

abstract class ShoppingBasketEvent {}

class FetchBasketProducts extends ShoppingBasketEvent {
  FetchBasketProducts();
}

class InitShoppingBasketState extends ShoppingBasketEvent {
  InitShoppingBasketState();
}

class RemoveBasketProducts extends ShoppingBasketEvent {
  final int productIdx;
  final double productPrice;
    final Function(bool) onSuccess;

  RemoveBasketProducts({required this.productIdx, required this.productPrice, required this.onSuccess});
}

class AddProductIntoBasket extends ShoppingBasketEvent {
  final Map<String, ProductViewModel> product;
  final double productPrice;
  final Function(bool) onSuccess;
  AddProductIntoBasket( {required this.product, required this.productPrice, required this.onSuccess});
}
