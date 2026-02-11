import 'package:flutter/material.dart';
import 'package:whatsapp/screens/app_main_screen.dart';
import 'package:whatsapp/screens/sign_screen.dart';
import 'package:whatsapp/screens/splash_screen.dart';

class AppRoutes {
  static const String splashscreen = "/";
  static const String appmainscreen = "/appmainscreen";
  static const String signinscreen = "/signinscreen";

  static Map<String, WidgetBuilder> routes = {

    splashscreen: (context) => SplashScreen(),
    appmainscreen: (context) => AppMainScreen(),
    signinscreen: (context) => SignScreen()
  };
}
