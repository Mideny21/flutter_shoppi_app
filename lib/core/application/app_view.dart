import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoppi/core/di/injection.dart';
import 'package:shoppi/core/router/app_router.dart';
import 'package:shoppi/features/authentication/presentation/cubit/auth_cubit.dart';
import 'package:shoppi/features/cart/presentation/cubit/cart_cubit.dart';
import 'package:shoppi/features/onbaording/language.dart';
import 'package:shoppi/features/onbaording/model/app_settings.dart';
import 'package:shoppi/features/orders/orders.dart';
import 'package:shoppi/features/products/presentation/bloc/product_bloc.dart';
import '../app_flavor/flavors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = getIt<AppRouter>();
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<ProductBloc>()),
        BlocProvider(create: (context) => getIt<AppSettingsCubit>()),
        BlocProvider(create: (context) => getIt<CartCubit>()..readAllCart()),
        BlocProvider(create: (context) => getIt<AuthCubit>()),
        BlocProvider(create: (context) => getIt<OrderBloc>()),
      ],
      child: BlocBuilder<AppSettingsCubit, AppSettings>(
        builder: (context, state) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            routerConfig: appRouter.config(),
            title: FlavorConfig.instance.values.appName,
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            locale: Locale(state.localeCode),
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),

            // builder: (_, child) {
            //   return FlavorBanner(child: child ?? const SizedBox());
            // },
          );
        },
      ),
    );
  }
}
