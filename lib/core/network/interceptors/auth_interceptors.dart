import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import 'package:shoppi/features/authentication/services/services.dart';

@injectable
class AuthInterceptor extends Interceptor {
  final AuthRedirector _redirector;
  final AuthService _authService;
  AuthInterceptor(this._redirector, this._authService);
  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final userInfo = await _authService.getUserData();
    if (userInfo != null) {
      options.headers['Authorization'] = 'Bearer ${userInfo.accessToken}';
    }
    return super.onRequest(options, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    // Handle 401 Unauthorized
    if (err.response?.statusCode == 401) {
      _redirector.redirectToLogin();
    }

    return super.onError(err, handler);
  }
}
