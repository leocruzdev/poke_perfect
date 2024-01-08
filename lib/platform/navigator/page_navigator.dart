import 'package:flutter/widgets.dart';
import 'package:poke_perfect/platform/navigator/routes.dart';

class PageNavigator {
  final Routes router;
  final Widget Function(BuildContext, dynamic) builder;

  PageNavigator({
    required this.router,
    required this.builder,
  });
}
