import 'package:whatsapp/utils/app_routes.dart';
import 'package:whatsapp/utils/app_colors.dart';
import 'package:flutter/material.dart';

class SignScreen extends StatefulWidget {
  const SignScreen({super.key});

  @override
  State<SignScreen> createState() => _SignScreenState();
}

class _SignScreenState extends State<SignScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(color: Colors.white60),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome Back",
              style: TextStyle(
                color: AppColors.primarycolor,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              height: 350,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                color: Colors.white60,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 12.0,
                      vertical: 10,
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        label: Text(
                          "Enter Your Number",
                          style: TextStyle(color: Colors.green),
                        ),
                        prefixIcon: Icon(Icons.numbers),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primarycolor,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, AppRoutes.appmainscreen);
                    },
                    child: Text("Next", style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
