// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:hive_ce_flutter/hive_flutter.dart' as _i919;
import 'package:injectable/injectable.dart' as _i526;

import '../../features/authentication/authentication.dart' as _i845;
import '../../features/authentication/presentation/cubit/auth_cubit.dart'
    as _i678;
import '../../features/authentication/repository/auth_repository.dart' as _i268;
import '../../features/authentication/services/auth_redirector.dart' as _i347;
import '../../features/authentication/services/auth_service.dart' as _i47;
import '../../features/authentication/services/services.dart' as _i63;
import '../../features/cart/cart.dart' as _i699;
import '../../features/cart/model/cart.dart' as _i609;
import '../../features/cart/presentation/cubit/cart_cubit.dart' as _i499;
import '../../features/cart/services/cart_service.dart' as _i64;
import '../../features/onboarding/onbording.dart' as _i413;
import '../../features/onboarding/presentation/cubit/app_settings.dart'
    as _i119;
import '../../features/products/presentation/bloc/product_bloc.dart' as _i28;
import '../../features/products/products.dart' as _i485;
import '../../features/products/repository/product_repository.dart' as _i592;
import '../modules/app_config.dart' as _i414;
import '../network/dio_client.dart' as _i667;
import '../network/dio_config/env_config.dart' as _i284;
import '../network/dio_config/env_config.prod.dart' as _i609;
import '../network/dio_config/env_config_dev.dart' as _i749;
import '../network/dio_config/env_config_staging.dart' as _i149;
import '../network/interceptors/auth_interceptors.dart' as _i1071;
import '../network/network_service.dart' as _i1025;
import '../router/app_route_guard.dart' as _i216;
import '../router/app_router.dart' as _i81;

const String _dev = 'dev';
const String _staging = 'staging';
const String _prod = 'prod';

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final appConfigModule = _$AppConfigModule();
    await gh.factoryAsync<_i919.Box<_i413.AppSettings>>(
      () => appConfigModule.appSettingsBox,
      preResolve: true,
    );
    await gh.factoryAsync<_i919.Box<_i609.CartItem>>(
      () => appConfigModule.cartBox,
      preResolve: true,
    );
    await gh.factoryAsync<_i919.Box<_i845.UserData>>(
      () => appConfigModule.userDataBox,
      preResolve: true,
    );
    gh.factory<_i119.AppSettingsCubit>(() => _i119.AppSettingsCubit());
    gh.lazySingleton<_i81.AppRouter>(() => _i81.AppRouter());
    gh.lazySingleton<_i284.EnvConfig>(
      () => _i749.DevEnvConfig(),
      registerFor: {_dev},
    );
    gh.lazySingleton<_i284.EnvConfig>(
      () => _i149.ProdEnvConfig(),
      registerFor: {_staging},
    );
    gh.lazySingleton<_i64.CartService>(
      () => _i64.CartService(gh<_i919.Box<_i699.CartItem>>()),
    );
    gh.lazySingleton<_i347.AuthRedirector>(
      () => _i347.AuthRedirector(gh<_i81.AppRouter>()),
    );
    gh.factory<_i499.CartCubit>(() => _i499.CartCubit(gh<_i699.CartService>()));
    gh.factory<_i47.AuthService>(
      () => _i47.AuthService(gh<_i919.Box<_i845.UserData>>()),
    );
    gh.lazySingleton<_i284.EnvConfig>(
      () => _i609.ProdEnvConfig(),
      registerFor: {_prod},
    );
    gh.factory<_i1071.AuthInterceptor>(
      () => _i1071.AuthInterceptor(
        gh<_i63.AuthRedirector>(),
        gh<_i63.AuthService>(),
      ),
    );
    gh.lazySingleton<_i667.DioClient>(
      () =>
          _i667.DioClient(gh<_i284.EnvConfig>(), gh<_i1071.AuthInterceptor>()),
    );
    gh.factory<_i216.AuthGuard>(
      () =>
          _i216.AuthGuard(gh<_i845.AuthService>(), gh<_i845.AuthRedirector>()),
    );
    gh.lazySingleton<_i1025.NetworkService>(
      () => _i1025.NetworkService(gh<_i667.DioClient>()),
    );
    gh.lazySingleton<_i268.AuthRepository>(
      () => _i268.AuthRepository(gh<_i1025.NetworkService>()),
    );
    gh.lazySingleton<_i592.ProductRepository>(
      () => _i592.ProductRepository(gh<_i1025.NetworkService>()),
    );
    gh.factory<_i678.AuthCubit>(
      () =>
          _i678.AuthCubit(gh<_i845.AuthRepository>(), gh<_i845.AuthService>()),
    );
    gh.factory<_i28.ProductBloc>(
      () => _i28.ProductBloc(gh<_i485.ProductRepository>()),
    );
    return this;
  }
}

class _$AppConfigModule extends _i414.AppConfigModule {}
