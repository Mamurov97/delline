import 'package:delline/screens/brends/brends.dart';
import 'package:delline/screens/category/category.dart';
import 'package:delline/screens/home/home.dart';
import 'package:delline/screens/login/login_screen.dart';
import 'package:delline/screens/pass/password.dart';
import 'package:flutter/material.dart';

abstract class MainNavigationRouteNames{
static const login = '/login';
static const pass = '/password';
static const home = '/home';
static const brends = '/brends';
static const category = '/category';
}
class MainNavigation{
String initialRoute () => MainNavigationRouteNames.login;

final routes = <String, Widget Function(BuildContext)>{
MainNavigationRouteNames.login:(context) => const LoginScreen(),
MainNavigationRouteNames.pass:(context) => const PasswordScreen(),
MainNavigationRouteNames.home:(context) => const HomeScreen(),
MainNavigationRouteNames.brends:(context) => const BrendScreen(),
MainNavigationRouteNames.category:(context) => const CategoryScreen(),
};
}