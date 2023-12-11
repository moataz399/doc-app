import 'package:base_project/features/logIn/login_screen.dart';
import 'package:flutter/material.dart';

import 'package:base_project/core/routing/routes.dart';
import 'package:flutter/cupertino.dart';

import '../../features/onboarding/onboarding_screen.dart';

class AppRouter {
  AppRouter();

  Route? generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnboardingScreen(),
        );

      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('NO route defined to ${settings.name}'),
                  ),
                ));
    }
  }
}
