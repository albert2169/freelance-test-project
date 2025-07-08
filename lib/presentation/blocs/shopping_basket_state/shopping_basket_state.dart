import 'package:agro_market/presentation/custom/enums/load_state_enum.dart';
import 'package:agro_market/presentation/models/product_view_model.dart';
import 'package:equatable/equatable.dart';

class ShoppingBasketState extends Equatable {
  final List<Map<String,ProductViewModel>> basketProducts;
  final LoadState loadState;
  final String errorMsg;

  const ShoppingBasketState({
    required this.basketProducts,
    required this.loadState,
    required this.errorMsg,
  });

  ShoppingBasketState copyWith({
    List<Map<String,ProductViewModel>>? basketProducts,
    LoadState? loadState,
    String? errorMsg,

  }) {
    return ShoppingBasketState(
      basketProducts: basketProducts ?? this.basketProducts,
      loadState: loadState ?? this.loadState,
      errorMsg: errorMsg ?? this.errorMsg,
    );
  }

  @override
  List<Object> get props => [basketProducts, loadState, errorMsg];
}
