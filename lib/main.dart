import 'package:agro_market/presentation/theme/agro_market_theme.dart';
import 'package:agro_market/router/app_router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _appRouter = AppRouter();

   MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _appRouter.config(),
      title: 'Agro Market',
      theme: AgroMarketTheme.get(Brightness.light),
    );
  }
}

