import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import 'package:shoppi/core/router/app_router.gr.dart';
import 'package:shoppi/features/authentication/authentication.dart';

@injectable
class AuthGuard extends AutoRouteGuard {
  final AuthService authService;

  AuthGuard(this.authService);

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    final isLoggedIn = await authService.isAuthenticated();

    if (isLoggedIn) {
      resolver.next(true);
    } else {
      resolver.redirectUntil(
        LoginRoute(
          onResult: (success) {
            resolver.next(success!);
          },
        ),
      );
    }
  }
}
