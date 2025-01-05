// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i2;
import 'package:cv/src/features/dashboard/presentation/pages/intro_screen.dart'
    as _i1;

abstract class $AppRouter extends _i2.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    IntroductionRoute.name: (routeData) {
      return _i2.AutoRoutePage<void>(
        routeData: routeData,
        child: const _i1.IntroductionScreen(),
      );
    }
  };
}

/// generated route for
/// [_i1.IntroductionScreen]
class IntroductionRoute extends _i2.PageRouteInfo<void> {
  const IntroductionRoute({List<_i2.PageRouteInfo>? children})
      : super(
          IntroductionRoute.name,
          initialChildren: children,
        );

  static const String name = 'IntroductionRoute';

  static const _i2.PageInfo<void> page = _i2.PageInfo<void>(name);
}
