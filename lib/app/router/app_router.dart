import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:spacex_galaxy_explorer/app/router/main_navigation_screen.dart';
import 'package:spacex_galaxy_explorer/app/router/error_screen.dart';
import 'package:spacex_galaxy_explorer/features/launches/data/models/launch_model.dart';
import 'package:spacex_galaxy_explorer/features/launches/presentation/screens/launch_details_screen.dart';
import 'package:spacex_galaxy_explorer/features/launches/presentation/screens/launches_screen.dart';
import 'package:spacex_galaxy_explorer/features/rockets/data/models/rocket_model.dart';
import 'package:spacex_galaxy_explorer/features/rockets/presentation/screens/rocket_details_screen.dart';
import 'package:spacex_galaxy_explorer/features/rockets/presentation/screens/rockets_screen.dart';
import 'package:spacex_galaxy_explorer/features/splash/presentation/screens/splash_screen.dart';

class AppRouter {
  static final GlobalKey<NavigatorState> _rootNavigatorKey =
      GlobalKey<NavigatorState>(debugLabel: 'root');

  static final router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: '/splash',
    errorBuilder: (context, state) => ErrorScreen(error: state.error),
    routes: [
      GoRoute(
        path: '/splash',
        builder: (context, state) => const SplashScreen(),
      ),
      // Top-level detail routes to avoid ShellRoute branch state issues
      GoRoute(
        path: '/rockets/:id',
        parentNavigatorKey: _rootNavigatorKey,
        builder: (context, state) {
          final rocket = state.extra as RocketModel?;
          if (rocket == null) {
            return const Scaffold(
              body: Center(child: Text('Rocket not found')),
            );
          }
          return RocketDetailsScreen(rocket: rocket);
        },
      ),
      GoRoute(
        path: '/launches/:id',
        parentNavigatorKey: _rootNavigatorKey,
        builder: (context, state) {
          final launch = state.extra as LaunchModel?;
          if (launch == null) {
            return const Scaffold(
              body: Center(child: Text('Launch not found')),
            );
          }
          return LaunchDetailsScreen(launch: launch);
        },
      ),
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return MainNavigationScreen(navigationShell: navigationShell);
        },
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/rockets',
                builder: (context, state) => const RocketsScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/launches',
                builder: (context, state) => const LaunchesScreen(),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
