import 'dart:async';
import 'package:flutter/material.dart';
import 'package:whatsapp/screens/sign_Screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
      Duration(seconds: 2),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => SignScreen()),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.white60),
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
