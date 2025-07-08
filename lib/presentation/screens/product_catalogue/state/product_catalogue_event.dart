import 'package:agro_market/presentation/custom/enums/prouduct_category_enum.dart';

abstract class ProductCatalogueEvent {}

class FetchProducts extends ProductCatalogueEvent {}

class SetProductFilter extends ProductCatalogueEvent {
  final ProductCategory productCategory;

  SetProductFilter({required this.productCategory});
}

