import 'package:auto_route/auto_route.dart';

import 'app_router.dart';
export 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  final List<AutoRoute> routes = [
    AutoRoute(page: HomeRoute.page, initial: true),
    AutoRoute(page: RestaurantListRoute.page),
    AutoRoute(page: AddRestaurantRoute.page),
  ];
}
