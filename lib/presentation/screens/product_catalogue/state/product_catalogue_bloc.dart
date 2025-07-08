import 'package:agro_market/presentation/app_constatns/mocked_products.dart';
import 'package:agro_market/presentation/custom/enums/load_state_enum.dart';
import 'package:agro_market/presentation/models/product_view_model.dart';
import 'package:agro_market/presentation/screens/product_catalogue/state/product_catalogue_event.dart';
import 'package:agro_market/presentation/screens/product_catalogue/state/product_catalogue_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductCatalogueBloc extends Bloc<ProductCatalogueEvent, ProductCatalogueState> {
  ProductCatalogueBloc()
    : super(
        const ProductCatalogueState(
          products: [],
          loadState: LoadState.loading,
          errorMsg: '',
          filteredProducts: [],
        ),
      ) {
    on<FetchProducts>(_handleFetchProducts);
    on<SetProductFilter>(_handleSetProductFilter);
  }

  void _handleFetchProducts(FetchProducts event, Emitter<ProductCatalogueState> emit) async {
    emit(state.copyWith(loadState: LoadState.loading));
    await Future.delayed(const Duration(seconds: 2));
    //Here will be call from db and emit db content
    //after it remote request amd emit remote
    emit(state.copyWith(loadState: LoadState.loaded, products: productsFetched));
  }

  void _handleSetProductFilter(SetProductFilter event, Emitter<ProductCatalogueState> emit) async {
    emit(state.copyWith(loadState: LoadState.loading));
    final products = [...state.products];
    final productFilteredList = <ProductViewModel>[];
    for (var product in products) {
      if (product.productCategory == event.productCategory) {
        productFilteredList.add(product);
      }
    }
    emit(
      state.copyWith(
        loadState: LoadState.loaded,
        filteredProducts: productFilteredList,
        appliedFilter: event.productCategory,
      ),
    );
  }
}

