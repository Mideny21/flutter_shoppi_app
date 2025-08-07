import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';

import 'package:shoppi/features/authentication/authentication.dart';

@injectable
class AuthGuard extends AutoRouteGuard {
  final AuthService authService;
  final AuthRedirector redirector;
  AuthGuard(this.authService, this.redirector);
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    final isLoggedIn = await authService.isAuthenticated();

    if (isLoggedIn) {
      resolver.next(true);
    } else {
      final success = await redirector.redirectToLogin();
      resolver.next(success);
    }
  }
}
