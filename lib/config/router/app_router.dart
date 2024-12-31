import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../feature/auth/presentation/screen/auth_selection_screen.dart';
import '../../feature/auth/presentation/screen/sign_in_screen.dart';
import '../../feature/auth/presentation/screen/sign_up_screen.dart';
import '../../feature/home/presentation/screen/home_screen.dart';

class AppRouter {
  static final GoRouter goRouter = GoRouter(
    initialLocation: '/',
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const AuthSelectionScreen();
        },
      ),
      GoRoute(
        path: '/signIn',
        name: 'signIn',
        builder: (BuildContext context, GoRouterState state) {
          return const SignInScreen();
        },
      ),
      GoRoute(
        path: '/signUp',
        name: 'signUp',
        builder: (BuildContext context, GoRouterState state) {
          return const SignUpScreen();
        },
      ),
      GoRoute(
        path: '/home',
        name: 'home',
        builder: (BuildContext context, GoRouterState state) {
          return const HomeScreen();
        },
      ),
    ],
  );
}
