import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import 'package:shoppi/features/authentication/authentication.dart';

@injectable
class AuthInterceptor extends Interceptor {
  final AuthService _authService;
  final AuthRedirector _redirector;
  AuthInterceptor(this._authService, this._redirector);

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
    // Handle 401 Unauthorized errors (token expired)
    if (err.response?.statusCode == 401) {
      _redirector.redirectToLogin();
    }
    return super.onError(err, handler);
  }
}
