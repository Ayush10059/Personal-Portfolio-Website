// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:cv/src/features/dashboard/presentation/pages/home_screen.dart'
    as _i2;
import 'package:cv/src/features/restaurant/presentation/pages/add_restaurant_screen.dart'
    as _i1;
import 'package:cv/src/features/restaurant/presentation/pages/restaurant_list_screen.dart'
    as _i3;

abstract class $AppRouter extends _i4.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    AddRestaurantRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AddRestaurantScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i4.AutoRoutePage<void>(
        routeData: routeData,
        child: const _i2.HomeScreen(),
      );
    },
    RestaurantListRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.RestaurantListScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.AddRestaurantScreen]
class AddRestaurantRoute extends _i4.PageRouteInfo<void> {
  const AddRestaurantRoute({List<_i4.PageRouteInfo>? children})
      : super(
          AddRestaurantRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddRestaurantRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i2.HomeScreen]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute({List<_i4.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i3.RestaurantListScreen]
class RestaurantListRoute extends _i4.PageRouteInfo<void> {
  const RestaurantListRoute({List<_i4.PageRouteInfo>? children})
      : super(
          RestaurantListRoute.name,
          initialChildren: children,
        );

  static const String name = 'RestaurantListRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}
