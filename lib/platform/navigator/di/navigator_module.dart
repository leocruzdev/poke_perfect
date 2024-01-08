import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:poke_perfect/platform/navigator/page_navigator.dart';

@module
abstract class GoRouterModule {
  @lazySingleton
  GoRouter getGoRouter(@injectable List<PageNavigator> pageNavigators) {
    assert(pageNavigators.isNotEmpty, 'pageNavigators não pode estar vazio');

    return GoRouter(
      initialLocation: pageNavigators.isNotEmpty
          ? pageNavigators.map((route) => route.router.path).first
          : '/',
      routes: pageNavigators
          .map(
            (route) => GoRoute(
              path: route.router.path,
              pageBuilder: (context, state) => MaterialPage(
                child: route.builder(context, state),
              ),
            ),
          )
          .toList(),
    );
  }
}
