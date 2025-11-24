import 'package:flutter/material.dart';
import 'package:whatsapp/Dashboard/utills/custom_widget.dart';

class CummunitiScreen extends StatefulWidget {
  const CummunitiScreen({super.key});

  @override
  State<CummunitiScreen> createState() => _CummunitiScreenState();
}

class _CummunitiScreenState extends State<CummunitiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.backgroundcolor,
        title: Text(
          "Communities",
          style: TextStyle(color: Colors.black, fontSize: 22),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
          ),
        ],
      ),
    );
  }
}
