import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../presentation/screens/screens.dart';

final GoRouter appRouter = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      name: HomeScreen.name,
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
    ),
    GoRoute(
      name: ButtonsScreen.name,
      path: '/buttons',
      builder: (BuildContext context, GoRouterState state) {
        return const ButtonsScreen();
      },
    ),
    GoRoute(
      name: CardScreen.name,
      path: '/cards',
      builder: (BuildContext context, GoRouterState state) {
        return const CardScreen();
      },
    ),
    GoRoute(
      name: AnimatedScreen.name,
      path: '/animated',
      builder: (BuildContext context, GoRouterState state) {
        return const AnimatedScreen();
      },
    ),
    GoRoute(
      name: UIControllsScreen.name,
      path: '/ui_controlls',
      builder: (BuildContext context, GoRouterState state) {
        return const UIControllsScreen();
      },
    ),
    GoRoute(
      name: InfiniteScrollScreen.name,
      path: '/infinite_scroll',
      builder: (BuildContext context, GoRouterState state) {
        return const InfiniteScrollScreen();
      },
    ),
    GoRoute(
      name: ProgressScreen.name,
      path: '/progress_indicators',
      builder: (BuildContext context, GoRouterState state) {
        return const ProgressScreen();
      },
    ),
    GoRoute(
      name: SnackbarScreen.name,
      path: '/snackbars',
      builder: (BuildContext context, GoRouterState state) {
        return const SnackbarScreen();
      },
    ),
    GoRoute(
      name: AppTutorialScreen.name,
      path: '/app_tutorial',
      builder: (BuildContext context, GoRouterState state) {
        return const AppTutorialScreen();
      },
    ),
    GoRoute(
      name: CounterScreen.name,
      path: '/contador',
      builder: (BuildContext context, GoRouterState state) {
        return const CounterScreen();
      },
    ),
    GoRoute(
      name: ThemeChangerScreen.name,
      path: '/theme_changer',
      builder: (BuildContext context, GoRouterState state) {
        return const ThemeChangerScreen();
      },
    ),
  ],
);
