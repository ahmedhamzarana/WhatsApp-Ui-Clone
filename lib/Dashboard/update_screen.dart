import 'package:flutter/material.dart';
import 'package:whatsapp/Dashboard/utills/custom_widget.dart';

class UpdateScreen extends StatefulWidget {
  const UpdateScreen({super.key});

  @override
  State<UpdateScreen> createState() => _UpdateScreenState();
}

class _UpdateScreenState extends State<UpdateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.backgroundcolor,
        title: Text(
          "Updates",
          style: TextStyle(
            color: Colors.black,
            fontSize: 22,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    
                  },
                  icon: Icon(Icons.search),
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
    );
  }
}
