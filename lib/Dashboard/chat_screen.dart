import 'package:flutter/material.dart';
import 'package:whatsapp/Dashboard/utills/chat_box_view.dart';
import 'package:whatsapp/Dashboard/utills/custom_widget.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<Map<String, String>> mycontact = [
    {
      "imgurl":
          "https://media.licdn.com/dms/image/v2/D4E03AQG2UjPoyRyQJw/profile-displayphoto-shrink_200_200/profile-displayphoto-shrink_200_200/0/1691323841878?e=2147483647&v=beta&t=a5yn15e7K7xzlRmiptWgO36VgQqvf_RIN1RqjOCJ0x8",
      "name": "Hamza",
      "message": "Kaha hu ?",
      "time": "yesterday",
      "count": "12",
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
                IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
              ],
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
            child: TextField(
              decoration: InputDecoration(
                labelText: "Ask Meta Ai or Search",
                labelStyle: TextStyle(color: Colors.grey, fontSize: 15),
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),

          ListView.builder(
            itemCount: mycontact.length,
            itemBuilder: (context, index) => ChatBoxView(
              imgurl: mycontact[0]["imgurl"].toString(),
              name: mycontact[0]["name"].toString(),
              message: mycontact[0]["message"].toString(),
              time: mycontact[0]["time"].toString(),
              count: mycontact[0]["count"].toString(),
            ),
          ),
        ],
      ),
    );
  }
}
