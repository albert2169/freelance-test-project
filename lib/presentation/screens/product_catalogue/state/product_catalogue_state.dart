import 'package:agro_market/presentation/custom/enums/load_state_enum.dart';
import 'package:agro_market/presentation/custom/enums/prouduct_category_enum.dart';
import 'package:agro_market/presentation/models/product_view_model.dart';
import 'package:equatable/equatable.dart';

class ProductCatalogueState extends Equatable {
  final List<ProductViewModel> products;
  final List<ProductViewModel> filteredProducts;
  final LoadState loadState;
  final String errorMsg;
  final ProductCategory appliedFilter;

  const ProductCatalogueState({
     this.appliedFilter = ProductCategory.none,
    required this.products,
    required this.loadState,
    required this.errorMsg,
    required this.filteredProducts,
  });

  ProductCatalogueState copyWith({
    List<ProductViewModel>? products,
    List<ProductViewModel>? filteredProducts,
    LoadState? loadState,
    String? errorMsg,
    ProductCategory? appliedFilter,

  }) {
    return ProductCatalogueState(
      products: products ?? this.products,
      loadState: loadState ?? this.loadState,
      errorMsg: errorMsg ?? this.errorMsg,
      appliedFilter: appliedFilter ?? this.appliedFilter,
      filteredProducts: filteredProducts ?? this.filteredProducts,
    );
  }

  @override
  List<Object> get props => [products, loadState, errorMsg, appliedFilter, filteredProducts];
}
