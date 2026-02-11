import 'package:flutter/material.dart';
import 'package:whatsapp/screens/Dashboard/calls_screen.dart';
import 'package:whatsapp/screens/Dashboard/chat_screen.dart';
import 'package:whatsapp/screens/Dashboard/cummuniti_screen.dart';
import 'package:whatsapp/screens/Dashboard/update_screen.dart';
import 'package:whatsapp/utils/app_colors.dart';

class AppMainScreen extends StatefulWidget {
  const AppMainScreen({super.key});

  @override
  State<AppMainScreen> createState() => _StateAppMainScreen();
}

class _StateAppMainScreen extends State<AppMainScreen> {
  int _currentIndex = 0;
  final List<Widget> _dashboardScreens = [
    ChatScreen(),
    UpdateScreen(),
    CummunitiScreen(),
    CallsScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _dashboardScreens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.backgroundcolor,
        selectedItemColor: AppColors.primarycolor,
        unselectedItemColor: Colors.black54,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_outlined),
            label: "Chats",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.circle_notifications_outlined),
            label: "Updates",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.groups_2_outlined),
            label: "Communities",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call_outlined),
            label: "Calls",
          ),
        ],
      ),
    );
  }
}
