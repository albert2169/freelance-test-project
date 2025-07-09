import 'package:agro_market/presentation/custom/enums/load_state_enum.dart';
import 'package:agro_market/presentation/models/product_view_model.dart';
import 'package:equatable/equatable.dart';

class ShoppingBasketState extends Equatable {
  final List<Map<String,ProductViewModel>> basketProducts;
  final LoadState loadState;
  final String errorMsg;
  final double totalPrice;

  const ShoppingBasketState({
    required this.basketProducts,
    required this.loadState,
    required this.errorMsg,
    required this.totalPrice,
  });

  ShoppingBasketState copyWith({
    List<Map<String,ProductViewModel>>? basketProducts,
    LoadState? loadState,
    String? errorMsg,
    double? totalPrice

  }) {
    return ShoppingBasketState(
      basketProducts: basketProducts ?? this.basketProducts,
      loadState: loadState ?? this.loadState,
      errorMsg: errorMsg ?? this.errorMsg,
      totalPrice: totalPrice ?? this.totalPrice
    );
  }

  @override
  List<Object> get props => [basketProducts, loadState, errorMsg, totalPrice];
}
