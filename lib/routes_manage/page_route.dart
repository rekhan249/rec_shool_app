import 'package:fec_app/screen_pages/home_screen.dart';
import 'package:fec_app/screen_pages/login_screen.dart';
import 'package:fec_app/screen_pages/signup_screen.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case SignUpScreen.routeName:
      return MaterialPageRoute(builder: (context) => const SignUpScreen());
    case LoginScreen.routeName:
      return MaterialPageRoute(builder: (context) => const LoginScreen());

    default:
      return MaterialPageRoute(builder: (context) => const HomeScreen());
  }
}
