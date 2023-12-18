import 'package:flutter/material.dart';
import 'package:professor_s_application1/presentation/register_screen/register_screen.dart';
import 'package:professor_s_application1/presentation/home_screen/home_screen.dart';
import 'package:professor_s_application1/presentation/start_match_screen/start_match_screen.dart';
import 'package:professor_s_application1/presentation/pick_an_option_screen/pick_an_option_screen.dart';
import 'package:professor_s_application1/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String registerScreen = '/register_screen';

  static const String homeScreen = '/home_screen';

  static const String startMatchScreen = '/start_match_screen';

  static const String pickAnOptionScreen = '/pick_an_option_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    registerScreen: (context) => RegisterScreen(),
    homeScreen: (context) => HomeScreen(),
    startMatchScreen: (context) => StartMatchScreen(),
    pickAnOptionScreen: (context) => PickAnOptionScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
