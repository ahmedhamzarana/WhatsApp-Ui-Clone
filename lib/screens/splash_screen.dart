import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp/providers/splash_provider.dart';
import 'package:whatsapp/utils/app_colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Provider.of<SplashProvider>(context).splashTimer(context);
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: AppColors.backgroundcolor),
        child: Center(
          child: SizedBox(
            height: 100,
            width: 100,
            child: Image.asset("assets/Whatsapp-Logo.png"),
          ),
        ),
      ),
    );
  }
}
