import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';

abstract class AppNavigator {
  void go(String route, {Object? extra});
  Future<T?> push<T extends Object?>(String route, {Object? extra});
  void pop<T extends Object?>([T? result]);
  RouterConfig<Object> getRouterConfig();
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
  void go(String route, {Object? extra}) {
    _goRouter.go(route, extra: extra);
  }

  @override
  Future<T?> push<T extends Object?>(String route, {Object? extra}) {
    return _goRouter.push<T>(route, extra: extra);
  }

  @override
  void pop<T extends Object?>([T? result]) {
    _goRouter.pop(result);
  }
}
