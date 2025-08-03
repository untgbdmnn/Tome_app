import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tome_app/pages/auth/forgot_password_screen.dart';
import 'package:tome_app/pages/auth/login_screen.dart';
import 'package:tome_app/pages/auth/register_screen.dart';
import 'package:tome_app/pages/splash/splash_screen.dart';
import 'package:tome_app/pages/splash/start_screen.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();
// final _sectionNavigatorKey = GlobalKey<NavigatorState>();

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
            // child: const SplashScreen(),
            child: const StartScreen(),
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
      path: '/register',
      name: 'register',
      pageBuilder: (BuildContext context, GoRouterState state) =>
          buildPageWithDefaultTransition(
            context: context,
            state: state,
            child: const RegisterScreen(),
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
  ],
);