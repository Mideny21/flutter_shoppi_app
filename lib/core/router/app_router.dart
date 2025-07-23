import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import 'package:shoppi/core/router/app_router.gr.dart';

@lazySingleton
@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => RouteType.material();

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: HomeRoute.page),
    AutoRoute(page: SplashRoute.page, initial: true),
    AutoRoute(page: ChooseLanguageRoute.page),
    AutoRoute(page: OnboardingRoute.page),
  ];
}
