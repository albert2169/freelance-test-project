import 'package:agro_market/presentation/app_constatns/app_dimensions.dart';
import 'package:agro_market/presentation/app_constatns/app_icons.dart';
import 'package:agro_market/presentation/custom/enums/prouduct_category_enum.dart';
import 'package:agro_market/router/app_router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBarCategoryWidget extends StatelessWidget {
  final ProductCategory selectedCategory;
  const AppBarCategoryWidget({super.key, required this.selectedCategory});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: SvgPicture.asset(
        AppIcons.categoryIcon,
        height: AppDimensions.categoryIconSize.height,
        width: AppDimensions.categoryIconSize.width,
      ),
      onTap: () {
        context.router.push(ProductCategoriesRoute(selectedCategory: selectedCategory));
      },
    );
  }
}
