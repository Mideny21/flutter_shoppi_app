import 'package:auto_route/auto_route.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();
  @override
  List<AutoRoute> get routes => [
    // AutoRoute(page: TaskRoute.page, initial: true),
    // AutoRoute(page: AddTaskRoute.page),
  ];
}
