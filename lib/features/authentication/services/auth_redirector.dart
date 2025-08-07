import 'package:injectable/injectable.dart';

import 'package:shoppi/core/router/app_router.dart';
import 'package:shoppi/core/router/app_router.gr.dart';

@lazySingleton
class AuthRedirector {
  final AppRouter _router;
  AuthRedirector(this._router);

  bool _isRedirecting = false;

  Future<bool> redirectToLogin() async {
    if (_isRedirecting) return false;
    _isRedirecting = true;

    bool? success;

    await _router.push(
      LoginRoute(
        onResults: (result) {
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
