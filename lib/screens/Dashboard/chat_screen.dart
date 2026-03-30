import 'package:flutter/material.dart';
import 'package:whatsapp/widget/chat_box_view.dart';
import 'package:whatsapp/utils/app_colors.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<Map<String, String>> mycontact = [
    {
      "imgurl":
          "https://upload.wikimedia.org/wikipedia/commons/0/06/Nissan_Skyline_GT-R_R34_V_Spec_II.jpg",
      "name": "Rohan",
      "message": "Kaha hu ?",
      "time": "yesterday",
      "count": "1",
    },
  ];
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
            fontSize: 25,
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
                IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
              ],
            ),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(55),
          child: TextField(
            decoration: InputDecoration(
              labelText: "Ask Meta Ai or Search",
              labelStyle: TextStyle(color: Colors.grey, fontSize: 15),
              prefixIcon: Icon(Icons.search),
            ),
          ),
        ),
      ),
      body: Container(
        color: AppColors.backgroundcolor,
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: mycontact.length,
                itemBuilder: (context, index) => ChatBoxView(
                  imgurl: mycontact[0]["imgurl"].toString(),
                  name: mycontact[0]["name"].toString(),
                  message: mycontact[0]["message"].toString(),
                  time: mycontact[0]["time"].toString(),
                  count: mycontact[0]["count"].toString(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
