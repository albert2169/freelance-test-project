import 'package:agro_market/presentation/app_constatns/app_images.dart';
import 'package:agro_market/presentation/custom/enums/load_state_enum.dart';
import 'package:agro_market/presentation/custom/enums/packaging_type_enum.dart';
import 'package:agro_market/presentation/custom/enums/prouduct_category_enum.dart';
import 'package:agro_market/presentation/models/product_view_model.dart';
import 'package:agro_market/presentation/screens/product_catalogue/state/product_catalogue_event.dart';
import 'package:agro_market/presentation/screens/product_catalogue/state/product_catalogue_state.dart';
import 'package:flutter/material.dart';
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
    await Future.delayed(const Duration(seconds: 2));
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

final productsFetched = <ProductViewModel>[
  ProductViewModel(
    name: 'CЕЛЬДЕРЕЙ ПРАЖСКИЙ ГИГАНТ',
    productCategory: ProductCategory.agriculture,
    packagingType: PackagingType.amount,
    displayImage: Image.asset(AppImages.productFirstImage),
  ),
  ProductViewModel(
    name: 'CЕЛЬДЕРЕЙ ПРАЖСКИЙ ГИГАНТ',
    productCategory: ProductCategory.agriculture,
    packagingType: PackagingType.amount,
    displayImage: Image.asset(AppImages.productFirstImage),
  ),
  ProductViewModel(
    name: 'CЕЛЬДЕРЕЙ ПРАЖСКИЙ ГИГАНТ',
    productCategory: ProductCategory.agriculture,
    packagingType: PackagingType.amount,
    displayImage: Image.asset(AppImages.productFirstImage),
  ),
  ProductViewModel(
    name: 'CЕЛЬДЕРЕЙ ПРАЖСКИЙ ГИГАНТ',
    productCategory: ProductCategory.agriculture,
    packagingType: PackagingType.amount,
    displayImage: Image.asset(AppImages.productFirstImage),
  ),
  ProductViewModel(
    name: 'CЕЛЬДЕРЕЙ ПРАЖСКИЙ ГИГАНТ',
    productCategory: ProductCategory.agriculture,
    packagingType: PackagingType.amount,
    displayImage: Image.asset(AppImages.productFirstImage),
  ),
  ProductViewModel(
    name: 'ЛЮПИН МНОГОЛЕТНИЙ',
    productCategory: ProductCategory.plants,
    packagingType: PackagingType.liter,
    displayImage: Image.asset(AppImages.productSecondImage),
  ),
   ProductViewModel(
    name: 'ЛЮПИН МНОГОЛЕТНИЙ',
    productCategory: ProductCategory.plants,
    packagingType: PackagingType.liter,
    displayImage: Image.asset(AppImages.productSecondImage),
  ),
  ProductViewModel(
    name: 'ЛЮПИН МНОГОЛЕТНИЙ',
    productCategory: ProductCategory.landscape,
    packagingType: PackagingType.kg,
    displayImage: Image.asset(AppImages.productFirstImage),
  ),
  ProductViewModel(
    name: 'ЛЮПИН МНОГОЛЕТНИЙ',
    productCategory: ProductCategory.seeds,
    packagingType: PackagingType.kg,
    displayImage: Image.asset(AppImages.productSecondImage),
  ),
  ProductViewModel(
    name: 'ЛЮПИН МНОГОЛЕТНИЙ',
    productCategory: ProductCategory.seeds,
    packagingType: PackagingType.kg,
    displayImage: Image.asset(AppImages.productSecondImage),
  ),
  ProductViewModel(
    name: 'ЛЮПИН МНОГОЛЕТНИЙ',
    productCategory: ProductCategory.forest,
    packagingType: PackagingType.amount,
    displayImage: Image.asset(AppImages.productFirstImage),
  ),
  ProductViewModel(
    name: 'ЛЮПИН МНОГОЛЕТНИЙ',
    productCategory: ProductCategory.forest,
    packagingType: PackagingType.amount,
    displayImage: Image.asset(AppImages.productSecondImage),
  ),
  ProductViewModel(
    name: 'ЛЮПИН МНОГОЛЕТНИЙ',
    productCategory: ProductCategory.forest,
    packagingType: PackagingType.amount,
    displayImage: Image.asset(AppImages.productSecondImage),
  ),
  ProductViewModel(
    name: 'ЛЮПИН МНОГОЛЕТНИЙ',
    productCategory: ProductCategory.forest,
    packagingType: PackagingType.amount,
    displayImage: Image.asset(AppImages.productSecondImage),
  ),
  ProductViewModel(
    name: 'ЛЮПИН МНОГОЛЕТНИЙ',
    productCategory: ProductCategory.forest,
    packagingType: PackagingType.amount,
    displayImage: Image.asset(AppImages.productFirstImage),
  ),
  ProductViewModel(
    name: 'ЛЮПИН МНОГОЛЕТНИЙ',
    productCategory: ProductCategory.forest,
    packagingType: PackagingType.amount,
    displayImage: Image.asset(AppImages.productFirstImage),
  ),
];
