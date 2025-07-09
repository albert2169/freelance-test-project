import 'package:agro_market/presentation/blocs/shopping_basket_state/shopping_basket_event.dart';
import 'package:agro_market/presentation/blocs/shopping_basket_state/shopping_basket_state.dart';
import 'package:agro_market/presentation/custom/enums/load_state_enum.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShoppingBasketBloc extends Bloc<ShoppingBasketEvent, ShoppingBasketState> {
  ShoppingBasketBloc()
    : super(
        const ShoppingBasketState(
          basketProducts: [],
          loadState: LoadState.loading,
          errorMsg: '',
          totalPrice: 0,
        ),
      ) {
    on<FetchBasketProducts>(_handleFetchBasketProducts);
    on<RemoveBasketProducts>(_handleRemoveBasketProducts);
    on<AddProductIntoBasket>(_handleAddProductIntoBasket);
    on<InitShoppingBasketState>(_handleInitShoppingBasketState);
  }

  void _handleFetchBasketProducts(
    FetchBasketProducts event,
    Emitter<ShoppingBasketState> emit,
  ) async {
    state.copyWith(loadState: LoadState.loading);
    await Future.delayed(const Duration(seconds: 1));
    emit(state.copyWith(loadState: LoadState.loaded));
  }

  void _handleRemoveBasketProducts(
    RemoveBasketProducts event,
    Emitter<ShoppingBasketState> emit,
  ) async {
    emit(state.copyWith(loadState: LoadState.loading));
    await Future.delayed(const Duration(seconds: 1));
    final reducedTotalPrice = state.totalPrice - event.productPrice;
    final basketProductsUpdated = [...state.basketProducts];
    basketProductsUpdated.removeAt(event.productIdx);
    event.onSuccess(true);
    emit(
      state.copyWith(
        basketProducts: basketProductsUpdated,
        totalPrice: reducedTotalPrice,
        loadState: LoadState.loaded,
      ),
    );
  }

  void _handleAddProductIntoBasket(
    AddProductIntoBasket event,
    Emitter<ShoppingBasketState> emit,
  ) async {
    final basketProductsUpdated = [...state.basketProducts];
    final totalPrice = state.totalPrice + event.productPrice;
    basketProductsUpdated.add(event.product);
    event.onSuccess(true);
    emit(
      state.copyWith(
        loadState: LoadState.loaded,
        basketProducts: basketProductsUpdated,
        totalPrice: totalPrice,
      ),
    );
  }

  void _handleInitShoppingBasketState(
    InitShoppingBasketState event,
    Emitter<ShoppingBasketState> emit,
  ) async {
    emit(
      ShoppingBasketState(
        basketProducts: [],
        loadState: LoadState.loading,
        errorMsg: '',
        totalPrice: 0,
      ),
    );
  }
}
