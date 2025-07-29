import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import 'package:shoppi/core/router/app_router.dart';
import 'package:shoppi/core/router/app_router.gr.dart';

@lazySingleton
class AuthRedirector {
  final AppRouter _router;

  bool _isRedirecting = false;

  AuthRedirector(this._router);

  Future<bool> redirectToLogin() async {
    if (_isRedirecting) return false; // Avoid multiple login screens
    _isRedirecting = true;

    bool? success;

    await _router.push(
      LoginRoute(
        onResult: (result) {
          success = result;
          if (success == true) {
            _router.pop();
          }
        },
      ),
    );

    _isRedirecting = false;

    return success ?? false;
  }
}
