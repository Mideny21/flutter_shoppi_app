import 'package:auto_route/auto_route.dart';
import 'package:shoppi/core/router/app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: AppEntryRoute.page, initial: true),
    AutoRoute(page: ChangeLanguageRoute.page),
    AutoRoute(
      page: DashboardRoute.page,
      children: [
        AutoRoute(page: HomeRoute.page),
        AutoRoute(page: OrdersRoute.page),
        AutoRoute(page: UserRoute.page),
      ],
    ),
    AutoRoute(page: AllProductsByCategoryRoute.page),
    AutoRoute(page: AuthRoute.page),
    AutoRoute(page: CartRoute.page),
    AutoRoute(page: ProductDetailRoute.page),
    AutoRoute(page: AddShippingAddressRoute.page),
    AutoRoute(page: OrdersRoute.page),
    AutoRoute(page: OrderSuccessfullyRoute.page),
    AutoRoute(page: ShippingAddressRoute.page),
  ];
}
