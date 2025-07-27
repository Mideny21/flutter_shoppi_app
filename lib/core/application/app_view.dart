import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoppi/core/app_flavor/flavor_config.dart';
import 'package:shoppi/core/di/injection.dart';
import 'package:shoppi/core/router/app_route_observer.dart';
import 'package:shoppi/core/router/app_router.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:shoppi/features/onboarding/onbording.dart';
import 'package:shoppi/features/onboarding/presentation/cubit/app_settings.dart';
import 'package:shoppi/features/products/products.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = getIt<AppRouter>();
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<AppSettingsCubit>()),
        BlocProvider(create: (context) => getIt<ProductBloc>()),
      ],
      child: BlocBuilder<AppSettingsCubit, AppSettings>(
        builder: (context, state) {
          return MaterialApp.router(
            routerConfig: appRouter.config(
              navigatorObservers: () => [MyObserver()],
            ),
            title: FlavorConfig.instance.values.appName,
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            locale: Locale(state.localeCode),
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            ),
          );
        },
      ),
    );
  }
}
