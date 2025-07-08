import 'package:agro_market/presentation/blocs/shopping_basket_state/shopping_basket_event.dart';
import 'package:agro_market/presentation/blocs/shopping_basket_state/shopping_basket_state.dart';
import 'package:agro_market/presentation/custom/enums/load_state_enum.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShoppingBasketBloc extends Bloc<ShoppingBasketEvent, ShoppingBasketState> {
  ShoppingBasketBloc()
    : super(
        const ShoppingBasketState(
          basketProducts: [],
          loadState: LoadState.loaded,
          errorMsg: '',
        ),
      ) {
    on<FetchBasketProducts>(_handleFetchBasketProducts);
    on<RemoveBasketProducts>(_handleRemoveBasketProducts);
    on<AddProductIntoBasket>(_handleAddProductIntoBasket);
  }

  void _handleFetchBasketProducts(FetchBasketProducts event, Emitter<ShoppingBasketState> emit) async {
    
  }

  void _handleRemoveBasketProducts(RemoveBasketProducts event, Emitter<ShoppingBasketState> emit) async {
    
  }

  void _handleAddProductIntoBasket(AddProductIntoBasket event, Emitter<ShoppingBasketState> emit) async {
    emit(state.copyWith(loadState: LoadState.loading));
    await Future.delayed(const Duration(seconds: 1));
    final basketProductsUpdated = [...state.basketProducts];
    basketProductsUpdated.add(event.product);
    emit(state.copyWith(loadState: LoadState.loaded, basketProducts: basketProductsUpdated));
  }
}

