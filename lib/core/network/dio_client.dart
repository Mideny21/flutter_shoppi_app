import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:shoppi/core/network/dio_config/env_config.dart';
import 'package:shoppi/core/network/interceptors/auth_interceptors.dart';
import 'package:shoppi/core/network/interceptors/logging_interceptor.dart';

/// Core Dio HTTP client for making network requests
@lazySingleton
class DioClient {
  late final Dio _dio;
  final EnvConfig _config;
  final AuthInterceptor _authInterceptor;

  /// Public getter for the Dio instance
  Dio get dio => _dio;

  /// Creates a configured Dio instance
  DioClient(this._config, this._authInterceptor) {
    _dio = Dio(
      BaseOptions(
        baseUrl: _config.baseUrl,
        connectTimeout: Duration(milliseconds: _config.connectionTimeout),
        receiveTimeout: Duration(milliseconds: _config.receiveTimeout),
        headers: _config.defaultHeaders,
      ),
    );

    _setupInterceptors();
  }

  /// Sets up Dio interceptors
  void _setupInterceptors() {
    // Clear any existing interceptors
    _dio.interceptors.clear();

    // Add auth interceptor
    _dio.interceptors.add(_authInterceptor);

    // Add logging interceptor for debug/development
    if (_config.enableLogging) {
      _dio.interceptors.add(LoggingInterceptor());
    }

    // You can add more interceptors as needed
    // e.g., _dio.interceptors.add(CacheInterceptor());
  }
}
