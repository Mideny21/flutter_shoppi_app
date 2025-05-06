import 'package:flutter/material.dart';
import 'package:shoppi/core/router/app_router.dart';

import '../app_flavor/flavors.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: _appRouter.config(),
      title: FlavorConfig.instance.values.appName,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),

      // builder: (_, child) {
      //   return FlavorBanner(child: child ?? const SizedBox());
      // },
      //   home: HomePage(title: FlavorConfig.instance.values.appName),
    );
  }
}
