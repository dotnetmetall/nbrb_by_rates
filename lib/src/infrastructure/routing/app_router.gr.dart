// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    RatesPageRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const RatesPage()),
      );
    },
    SettingsPageRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const SettingsPage()),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          RatesPageRoute.name,
          path: '/',
        ),
        RouteConfig(
          SettingsPageRoute.name,
          path: '/settings-page',
        ),
      ];
}

/// generated route for
/// [RatesPage]
class RatesPageRoute extends PageRouteInfo<void> {
  const RatesPageRoute()
      : super(
          RatesPageRoute.name,
          path: '/',
        );

  static const String name = 'RatesPageRoute';
}

/// generated route for
/// [SettingsPage]
class SettingsPageRoute extends PageRouteInfo<void> {
  const SettingsPageRoute()
      : super(
          SettingsPageRoute.name,
          path: '/settings-page',
        );

  static const String name = 'SettingsPageRoute';
}
