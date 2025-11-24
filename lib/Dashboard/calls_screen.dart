import 'package:flutter/material.dart';
import 'package:whatsapp/Dashboard/utills/custom_widget.dart';

class CallsScreen extends StatefulWidget {
  const CallsScreen({super.key});

  @override
  State<CallsScreen> createState() => _CallsScreenState();
}

class _CallsScreenState extends State<CallsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.backgroundcolor,
        title: Text(
          "Calls",
          style: TextStyle(color: Colors.black, fontSize: 22),
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
                  icon: Icon(Icons.search),
                ),
                IconButton(
                  onPressed: () {
                    Colors.green;
                  },
                  icon: Icon(Icons.more_vert),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
