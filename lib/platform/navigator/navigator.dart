import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:poke_perfect/platform/logger/logger_service.dart';
import 'package:poke_perfect/platform/navigator/routes.dart';

abstract class AppNavigator {
  void go(Routes route, {Object? extra});
  Future<T?> push<T extends Object?>(Routes route, {Object? extra});
  void pop<T extends Object?>([T? result]);
  RouterConfig<Object> getRouterConfig();
  Object? getExtras();
}

@Injectable(as: AppNavigator)
class NavigatorAppImpl implements AppNavigator {
  NavigatorAppImpl(this._goRouter);

  final GoRouter _goRouter;

  @override
  RouterConfig<Object> getRouterConfig() {
    return RouterConfig(
      routeInformationProvider: _goRouter.routeInformationProvider,
      routerDelegate: _goRouter.routerDelegate,
      routeInformationParser: _goRouter.routeInformationParser,
    );
  }

  @override
  void go(Routes route, {Object? extra}) {
    LoggerService.logDebug('Navigating to route with GO: ${route.path}');
    _goRouter.go(route.toString(), extra: extra);
  }

  @override
  Future<T?> push<T extends Object?>(Routes route, {Object? extra}) {
    LoggerService.logDebug('Navigating to route with PUSH: ${route.path}');
    return _goRouter.push<T>(route.toString(), extra: extra);
  }

  @override
  void pop<T extends Object?>([T? result]) {
    LoggerService.logDebug(
        'Navigating to route with POP: ${result.toString()}');
    _goRouter.pop(result);
  }

  @override
  Object? getExtras() {
    return _goRouter.routerDelegate.currentConfiguration.extra;
  }
}
