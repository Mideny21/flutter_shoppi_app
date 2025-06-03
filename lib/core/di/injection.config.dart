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
import '../../features/authentication/services/auth_service.dart' as _i47;
import '../../features/cart/cart.dart' as _i699;
import '../../features/cart/presentation/cubit/cart_cubit.dart' as _i499;
import '../../features/cart/services/cart_service.dart' as _i64;
import '../../features/language/model/app_settings.dart' as _i822;
import '../../features/language/presentation/cubit/app_setting_cubit.dart'
    as _i151;
import '../../features/products/presentation/bloc/product_bloc.dart' as _i28;
import '../../features/products/products.dart' as _i485;
import '../../features/products/repository/product_repository.dart' as _i592;
import '../config/env_config.dart' as _i373;
import '../config/env_config_dev.dart' as _i325;
import '../config/env_config_prod.dart' as _i737;
import '../config/env_config_staging.dart' as _i448;
import '../modules/app_settings.dart' as _i814;
import '../network/dio_client.dart' as _i667;
import '../network/interceptors/auth_interceptor.dart' as _i745;
import '../network/network_service.dart' as _i1025;

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
    final registerModule = _$RegisterModule();
    await gh.factoryAsync<_i919.Box<_i822.AppSettings>>(
      () => registerModule.appSettingsBox,
      preResolve: true,
    );
    await gh.factoryAsync<_i919.Box<_i845.UserData>>(
      () => registerModule.userDataBox,
      preResolve: true,
    );
    await gh.factoryAsync<_i919.Box<_i699.CartItem>>(
      () => registerModule.cartBox,
      preResolve: true,
    );
    gh.factory<_i151.AppSettingsCubit>(() => _i151.AppSettingsCubit());
    gh.lazySingleton<_i745.AuthInterceptor>(() => _i745.AuthInterceptor());
    gh.lazySingleton<_i373.EnvConfig>(
      () => _i325.DevEnvConfig(),
      registerFor: {_dev},
    );
    gh.lazySingleton<_i373.EnvConfig>(
      () => _i448.StagingEnvConfig(),
      registerFor: {_staging},
    );
    gh.lazySingleton<_i64.CartService>(
      () => _i64.CartService(gh<_i919.Box<_i699.CartItem>>()),
    );
    gh.factory<_i499.CartCubit>(() => _i499.CartCubit(gh<_i64.CartService>()));
    gh.lazySingleton<_i667.DioClient>(
      () => _i667.DioClient(gh<_i373.EnvConfig>(), gh<_i745.AuthInterceptor>()),
    );
    gh.lazySingleton<_i373.EnvConfig>(
      () => _i737.ProdEnvConfig(),
      registerFor: {_prod},
    );
    gh.factory<_i47.AuthService>(
      () => _i47.AuthService(gh<_i919.Box<_i845.UserData>>()),
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
    gh.factory<_i28.ProductBloc>(
      () => _i28.ProductBloc(gh<_i485.ProductRepository>()),
    );
    gh.factory<_i678.AuthCubit>(
      () =>
          _i678.AuthCubit(gh<_i845.AuthRepository>(), gh<_i845.AuthService>()),
    );
    return this;
  }
}

class _$RegisterModule extends _i814.RegisterModule {}
