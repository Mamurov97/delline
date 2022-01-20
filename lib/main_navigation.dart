import 'package:delline/screens/login/login_screen.dart';
import 'package:delline/screens/pass/password.dart';
import 'package:flutter/material.dart';

abstract class MainNavigationRouteNames{
static const login = '/login';
static const pass = '/password';
}
class MainNavigation{
String initialRoute () => MainNavigationRouteNames.pass;

final routes = <String, Widget Function(BuildContext)>{
MainNavigationRouteNames.login:(context) => const LoginScreen(),
MainNavigationRouteNames.pass:(context) => const PasswordScreen(),
};
}