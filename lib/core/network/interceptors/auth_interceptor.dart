import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AuthInterceptor extends Interceptor {
  // Inject your auth service here if needed
  // final AuthService _authService;
  // AuthInterceptor(this._authService);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // Example of adding an auth token to requests
    // final token = _authService.getToken();
    // if (token != null) {
    //   options.headers['Authorization'] = 'Bearer $token';
    // }

    // For now, we'll just use a placeholder
    // Remove this in production and use the commented code above
    options.headers['Authorization'] = 'Bearer dummy-token';

    return super.onRequest(options, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    // Handle 401 Unauthorized errors (token expired)
    if (err.response?.statusCode == 401) {
      // Refresh token logic or logout user
      // _authService.refreshToken() or _authService.logout()
    }
    return super.onError(err, handler);
  }
}
