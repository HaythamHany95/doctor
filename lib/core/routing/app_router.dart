import 'package:doctor/core/routing/routes.dart';
import 'package:doctor/features/login/login_screen.dart';
import 'package:doctor/features/onboarding/presentation/onboarding_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route generateRoutes(RouteSettings settngs) {
    switch (settngs.name) {
      case Routes.onboardingScreen:
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
              child: Text("No route defined for ${settngs.name}"),
            ),
          ),
        );
    }
  }
}
