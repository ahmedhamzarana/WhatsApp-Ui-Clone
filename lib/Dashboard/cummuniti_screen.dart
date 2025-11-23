import 'package:flutter/material.dart';

class CummunitiScreen extends StatefulWidget {
  const CummunitiScreen({super.key});

  @override
  State<CummunitiScreen> createState() => _CummunitiScreenState();
}

class _CummunitiScreenState extends State<CummunitiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Cummunities Screen"
        ),
      ),
    );
  }
}