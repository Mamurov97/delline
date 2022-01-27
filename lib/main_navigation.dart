import 'package:delline/screens/brends/brends.dart';
import 'package:delline/screens/home/home.dart';
import 'package:delline/screens/login/login_screen.dart';
import 'package:delline/screens/pass/password.dart';
import 'package:flutter/material.dart';

abstract class MainNavigationRouteNames {
  static const login = '/login';
  static const pass = '/password';
  static const home = '/home';
  static const brends = '/brends';
}

class MainNavigation {
  String initialRoute() => MainNavigationRouteNames.home;

  final routes = <String, Widget Function(BuildContext)>{
    MainNavigationRouteNames.login: (context) => LoginScreen.screen(),
    MainNavigationRouteNames.pass: (context) => PasswordScreen.screen(),
    MainNavigationRouteNames.home: (context) => const HomeScreen(),
    MainNavigationRouteNames.brends: (context) => BrendScreen.screen(),
  };
}
