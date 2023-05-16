import 'package:flutter/material.dart';
import 'package:lootbox/screens/splash.dart/components/body.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/splash";
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SplashBody());
  }
}
