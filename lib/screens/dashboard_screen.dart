import 'package:flutter/material.dart';
import 'package:whatsapp/Dashboard/calls_screen.dart';
import 'package:whatsapp/Dashboard/chat_screen.dart';
import 'package:whatsapp/Dashboard/cummuniti_screen.dart';
import 'package:whatsapp/Dashboard/update_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _currentIndex = 0;
  final List<Widget> _dashboardScreens = [
    ChatScreen(),
    UpdateScreen(),
    CummunitiScreen(),
    CallsScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white70,
        title: Text(
          "WhatsApp",
          style: TextStyle(
            color: Colors.green,
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: Icon(Icons.camera),
      ),
      body: _dashboardScreens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.green.shade500,
        unselectedItemColor: Colors.black54,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index) {
            setState(() {
          _currentIndex = index;
              
            });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "Chats"),
          BottomNavigationBarItem(
            icon: Icon(Icons.messenger_sharp),
            label: "Updates",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Cummunities",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: "Calls"),
        ],
      ),
    );
  }
}