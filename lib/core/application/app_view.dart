import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoppi/core/di/injection.dart';
import 'package:shoppi/core/router/app_route_observer.dart';
import 'package:shoppi/core/router/app_router.dart';
import 'package:shoppi/core/utils/utils.dart';
import 'package:shoppi/features/authentication/presentation/cubit/auth_cubit.dart';
import 'package:shoppi/features/cart/presentation/cubit/cart_cubit.dart';
import 'package:shoppi/features/onbaording/language.dart';
import 'package:shoppi/features/onbaording/model/app_settings.dart';
import 'package:shoppi/features/onbaording/presentation/cubit/on_boarding_cubit.dart';
import 'package:shoppi/features/orders/orders.dart';
import 'package:shoppi/features/products/presentation/bloc/product_bloc.dart';
import 'package:toastification/toastification.dart';
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
        BlocProvider(create: (context) => getIt<OnboardingCubit>()),
      ],
      child: BlocBuilder<AppSettingsCubit, AppSettings>(
        builder: (context, state) {
          return ToastificationConfigProvider(
            config: const ToastificationConfig(
              alignment: Alignment.topCenter,
              animationDuration: Duration(milliseconds: 500),
            ),
            child: MaterialApp.router(
              debugShowCheckedModeBanner: false,
              routerConfig: appRouter.config(
                navigatorObservers: () => [MyObserver()],
              ),

              title: FlavorConfig.instance.values.appName,
              localizationsDelegates: AppLocalizations.localizationsDelegates,
              supportedLocales: AppLocalizations.supportedLocales,
              locale: Locale(state.localeCode),
              theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: Palette.mainColor),
                useMaterial3: true,
                scaffoldBackgroundColor: Colors.white,
              ),

              // builder: (_, child) {
              //   return FlavorBanner(child: child ?? const SizedBox());
              // },
            ),
          );
        },
      ),
    );
  }
}
