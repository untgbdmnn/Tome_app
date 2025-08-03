import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tome_app/cores/scaffold_with_navbar.dart';
import 'package:tome_app/pages/auth/forgot_password_screen.dart';
import 'package:tome_app/pages/auth/auth_screen.dart';
import 'package:tome_app/pages/dashboard/dashboard_screen.dart';
import 'package:tome_app/pages/splash/splash_screen.dart';
import 'package:tome_app/pages/splash/start_screen.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();
final _sectionNavigatorKey = GlobalKey<NavigatorState>();

CustomTransitionPage<T> buildPageWithDefaultTransition<T>({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
}) {
  return CustomTransitionPage<T>(
    key: state.pageKey,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) =>
        SlideTransition(
          position: animation.drive(
            Tween<Offset>(
              begin: const Offset(0, 1.0), // 👈 dari bawah
              end: Offset.zero,
            ).chain(CurveTween(curve: Curves.easeInOut)),
          ),
          child: child,
        ),
  );
}

final GoRouter router = GoRouter(
  navigatorKey: rootNavigatorKey,
  initialLocation: '/',
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      name: 'splash',
      pageBuilder: (BuildContext context, GoRouterState state) =>
          buildPageWithDefaultTransition(
            context: context,
            state: state,
            child: const StartScreen(),
            // child: const DashboardScreen(),
          ),
    ),
    GoRoute(
      path: '/start',
      name: 'start',
      pageBuilder: (BuildContext context, GoRouterState state) =>
          buildPageWithDefaultTransition(
            context: context,
            state: state,
            child: const StartScreen(),
          ),
    ),
    GoRoute(
      path: '/login',
      name: 'login',
      pageBuilder: (BuildContext context, GoRouterState state) =>
          buildPageWithDefaultTransition(
            context: context,
            state: state,
            child: const LoginScreen(),
          ),
    ),
    GoRoute(
      path: '/forgotpassword',
      name: 'forgotpassword',
      pageBuilder: (BuildContext context, GoRouterState state) =>
          buildPageWithDefaultTransition(
            context: context,
            state: state,
            child: const ForgotPasswordScreen(),
          ),
    ),
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return ScaffoldWithNavbar(navigationShell);
      },
      branches: [
        StatefulShellBranch(
          navigatorKey: _sectionNavigatorKey,
          routes: <RouteBase>[
            GoRoute(
              name: 'beranda',
              path: '/beranda',
              builder: (BuildContext context, GoRouterState state) =>
                  const DashboardScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: <RouteBase>[
            GoRoute(
              name: 'search',
              path: '/search',
              builder: (BuildContext context, GoRouterState state) =>
                  const DashboardScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: <RouteBase>[
            GoRoute(
              name: 'borrow',
              path: '/borrow',
              builder: (BuildContext context, GoRouterState state) =>
                  const DashboardScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: <RouteBase>[
            GoRoute(
              name: 'profile',
              path: '/profile',
              builder: (BuildContext context, GoRouterState state) =>
                  const DashboardScreen(),
            ),
          ],
        ),
      ],
    ),
  ],
);
