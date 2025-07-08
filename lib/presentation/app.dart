import 'package:agro_market/presentation/blocs/shopping_basket_state/shopping_basket_bloc.dart';
import 'package:agro_market/presentation/screens/product_catalogue/state/product_catalogue_bloc.dart';
import 'package:agro_market/presentation/theme/agro_market_theme.dart';
import 'package:agro_market/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  final _appRouter = AppRouter();

   App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => ProductCatalogueBloc()),
        BlocProvider(create: (_) => ShoppingBasketBloc()),
      ],
      child: MaterialApp.router(
        routerConfig: _appRouter.config(),
        title: 'Agro Market',
        theme: AgroMarketTheme.get(Brightness.light),
      ),
    );
  }
}