import 'package:agro_market/presentation/app_constatns/app_icons.dart';
import 'package:agro_market/presentation/blocs/shopping_basket_state/shopping_basket_bloc.dart';
import 'package:agro_market/presentation/blocs/shopping_basket_state/shopping_basket_state.dart';
import 'package:agro_market/router/app_router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class ShoppingBasketCart extends StatelessWidget {
  const ShoppingBasketCart({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShoppingBasketBloc, ShoppingBasketState>(
      builder: (context, state) {
        return Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                GestureDetector(
                  child: SvgPicture.asset(AppIcons.shoppingCardIcon, height: 32, width: 32),
                  onTap: () {
                    context.router.push(ShoppingBasketRoute());
                  },
                ),
                if (state.basketProducts.isNotEmpty)
                  Positioned(
                    right: -5,
                    top: -5,
                    child: Container(
                      padding: const EdgeInsets.all(3),
                      decoration: BoxDecoration(color: Colors.red, shape: BoxShape.circle),
                      constraints: const BoxConstraints(minWidth: 16, minHeight: 16),
                      child: Center(
                        child: Text(
                          '${state.basketProducts.length}',
                          style: TextStyle(color: Colors.white, fontSize: 10),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ],
        );
      },
    );
  }
}
