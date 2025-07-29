import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import 'package:shoppi/features/authentication/authentication.dart';

@injectable
class AuthInterceptor extends Interceptor {
  final AuthService _authService;
  AuthInterceptor(this._authService);

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
      await _authService.deleteUserData();
      // _router.replace(AuthRoute());
      // if (err.response!.statusCode == 401) {}
      // Refresh token logic or logout user
      // _authService.refreshToken() or _authService.logout()
    }
    return super.onError(err, handler);
  }
}
