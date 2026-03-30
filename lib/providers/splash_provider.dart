import 'package:flutter/material.dart';
import 'package:whatsapp/utils/app_routes.dart';

class SplashProvider extends ChangeNotifier {
  void splashTimer(BuildContext context) async{
    await Future.delayed(
      Duration(seconds: 3),
      () => Navigator.pushNamed(context, AppRoutes.signinscreen),
    );
  }
}
