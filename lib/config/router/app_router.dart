import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../feature/auth/presentation/screen/auth_selection_screen.dart';
import '../../feature/auth/presentation/screen/sign_in_screen.dart';
import '../../feature/auth/presentation/screen/sign_up_screen.dart';

class AppRouter {
  static final GoRouter goRouter = GoRouter(
    initialLocation: '/',
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const AuthSelectionScreen();
        },
        routes: <GoRoute>[
          GoRoute(
            path: '/signIn',
            builder: (BuildContext context, GoRouterState state) {
              return const SignInScreen();
            },
          ),
          GoRoute(
            path: '/signUp',
            builder: (BuildContext context, GoRouterState state) {
              return const SignUpScreen();
            },
          ),
        ]
      ),
    ],
  );
}
