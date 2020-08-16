import 'package:flutter/material.dart';

import 'views/forgot_password/forgot_password_screen.dart';
import 'views/home_screen/home_screen.dart';
import 'views/onboarding_screen/onboarding_screen.dart';
import 'views/sign_in/sign_in_screen.dart';
import 'views/sign_up/sign_up_screen.dart';
import 'views/splash/splash_screen.dart';

// We use name route
// All our routes will be available here

final Map<String, WidgetBuilder> routes = {
  OnboardingScreen.routeName: (context) => OnboardingScreen(),
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
};
