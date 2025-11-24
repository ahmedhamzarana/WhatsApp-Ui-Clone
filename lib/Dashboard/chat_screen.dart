import 'package:flutter/material.dart';
import 'package:whatsapp/Dashboard/utills/custom_widget.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.backgroundcolor,
        title: Text(
          "WhatsApp",
          style: TextStyle(
            color: AppColors.primarycolor,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Colors.green;
                  },
                  icon: Icon(Icons.camera_alt_outlined),
                ),
                IconButton(
                  onPressed: () {
                  },
                  icon: Icon(Icons.more_vert),
                ),
              ],
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),

            child: TextField(
              decoration: InputDecoration(
                label: Text(
                  "Ask Meta Ai or Search",
                  style: TextStyle(
                    color: Color.fromARGB(255, 172, 173, 172),
                    fontSize: 15,
                  ),
                ),
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),

          
        ],
      ),
    );
  }
}
