import 'package:agro_market/presentation/app_constatns/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBarCategoryWidget extends StatelessWidget {
  const AppBarCategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: SvgPicture.asset(AppIcons.categoryIcon, height: 32, width: 32,), 
      onTap: () {

      },
    );
  }
}
