import 'package:base_project/core/di/dependency_injection.dart';
import 'package:base_project/features/home/logic/home_cubit.dart';
import 'package:base_project/features/home/ui/home_screen.dart';
import 'package:base_project/features/home/ui/screens/doctor_recommendation_screen.dart';
import 'package:base_project/features/home/ui/screens/doctor_speciality_screen.dart';
import 'package:base_project/features/logIn/logic/login_cubit.dart';
import 'package:base_project/features/logIn/ui/login_screen.dart';
import 'package:base_project/features/register/logic/register_cubit.dart';
import 'package:flutter/material.dart';

import 'package:base_project/core/routing/routes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/onboarding/onboarding_screen.dart';
import '../../features/register/ui/register_screen.dart';

class AppRouter {
  AppRouter();

  Route? generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnboardingScreen(),
        );

      case Routes.doctorRecommendationScreen:
        return MaterialPageRoute(
          builder: (_) => const DoctorRecommendationScreen(),
        );

      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<HomeCubit>(),
            child: const HomeScreen(),
          ),
        );

      case Routes.doctorSpecialityScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
              create: (context) => getIt<HomeCubit>(),
              child: const DoctorSpecialityScreen()),
        );

      case Routes.loginScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider.value(
                  value: getIt<LoginCubit>(),
                  child: const LoginScreen(),
                ));

      case Routes.registerScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider.value(
                  value: getIt<RegisterCubit>(),
                  child: const RegisterScreen(),
                ));

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
