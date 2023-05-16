import 'package:flutter/material.dart';
import 'package:lootbox/screens/home/home_screen.dart';
import 'screens/sign_in/sign_in_screen.dart';
import 'screens/splash.dart/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  SignInScreen.routeName: (context) => const SignInScreen(),
  HomePageScreen.routeName: (context) => const HomePageScreen()
};
