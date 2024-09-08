import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../presentation/screens/screens.dart';

final GoRouter appRouter = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
    ),
        GoRoute(
      path: '/buttons',
      builder: (BuildContext context, GoRouterState state) {
        return const ButtonsScreen();
      },
    ),
        GoRoute(
      path: '/cards',
      builder: (BuildContext context, GoRouterState state) {
        return const CardScreen();
      },
    ),
  ],
);