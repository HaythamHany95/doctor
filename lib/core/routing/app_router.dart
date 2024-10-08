import 'package:doctor/core/di/dependency_injection.dart';
import 'package:doctor/core/routing/routes.dart';
import 'package:doctor/features/home/logic/home_cubit.dart';
import 'package:doctor/features/home/presentation/home_screen.dart';
import 'package:doctor/features/login/logic/cubit/login_cubit.dart';
import 'package:doctor/features/login/presentation/login_screen.dart';
import 'package:doctor/features/onboarding/onboarding_screen.dart';
import 'package:doctor/features/register/logic/cubit/register_cubit.dart';
import 'package:doctor/features/register/presentation/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route? generateRoutes(RouteSettings settngs) {
    switch (settngs.name) {
      case Routes.onboardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnboardingScreen(),
        );

      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );

      case Routes.registerScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<RegisterCubit>(),
            child: const RegisterScreen(),
          ),
        );

      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<HomeCubit>(),
            child: const HomeScreen(),
          ),
        );
      default:
        return null;
    }
  }
}
