// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../config/env_config.dart' as _i373;
import '../config/env_config_dev.dart' as _i325;
import '../config/env_config_prod.dart' as _i737;
import '../config/env_config_staging.dart' as _i448;
import '../network/dio_client.dart' as _i667;
import '../network/interceptors/auth_interceptor.dart' as _i745;
import '../network/network_service.dart' as _i1025;

const String _dev = 'dev';
const String _staging = 'staging';
const String _prod = 'prod';

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.factory<_i745.AuthInterceptor>(() => _i745.AuthInterceptor());
    gh.lazySingleton<_i373.EnvConfig>(
      () => _i325.DevEnvConfig(),
      registerFor: {_dev},
    );
    gh.lazySingleton<_i373.EnvConfig>(
      () => _i448.StagingEnvConfig(),
      registerFor: {_staging},
    );
    gh.lazySingleton<_i667.DioClient>(
      () => _i667.DioClient(gh<_i373.EnvConfig>(), gh<_i745.AuthInterceptor>()),
    );
    gh.lazySingleton<_i373.EnvConfig>(
      () => _i737.ProdEnvConfig(),
      registerFor: {_prod},
    );
    gh.factory<_i1025.NetworkService>(
      () => _i1025.NetworkService(gh<_i667.DioClient>()),
    );
    return this;
  }
}
