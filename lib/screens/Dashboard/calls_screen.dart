import 'package:flutter/material.dart';
import 'package:whatsapp/widget/call_box_view.dart';
import 'package:whatsapp/utils/app_colors.dart';

class CallsScreen extends StatefulWidget {
  const CallsScreen({super.key});

  @override
  State<CallsScreen> createState() => _CallsScreenState();
}

class _CallsScreenState extends State<CallsScreen> {
  // List of call data
  List<Map<String, String>> myCalls = [
    {
      "imgurl":
          "https://upload.wikimedia.org/wikipedia/commons/0/06/Nissan_Skyline_GT-R_R34_V_Spec_II.jpg",
      "name": "Rohan",
      "time": "43 minutes ago",
      "type": "received", // "received" or "made"
    },
    {
      "imgurl":
          "https://upload.wikimedia.org/wikipedia/commons/3/36/John_Doe.jpg",
      "name": "Anita",
      "time": "2 hours ago",
      "type": "made",
    },
    {
      "imgurl":
          "https://upload.wikimedia.org/wikipedia/commons/1/12/Jane_Doe.jpg",
      "name": "Suresh",
      "time": "yesterday",
      "type": "missed",
    },
  ];

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
                IconButton(onPressed: () {}, icon: Icon(Icons.search)),
                IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
              ],
            ),
          ),
        ],
      ),
      body: Container(
        color: AppColors.backgroundcolor,
        child: Column(
          children: [
            // Top menu buttons
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.call_outlined),
                      ),
                      Text("Call", style: TextStyle(fontSize: 13, color: Colors.grey)),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.calendar_month),
                      ),
                      Text("Scheduled", style: TextStyle(fontSize: 13, color: Colors.grey)),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.dialpad),
                      ),
                      Text("Dialpad", style: TextStyle(fontSize: 13, color: Colors.grey)),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.favorite_outline),
                      ),
                      Text("Favorite", style: TextStyle(fontSize: 13, color: Colors.grey)),
                    ],
                  ),
                ],
              ),
            ),

            // Recent calls list
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: ListView.builder(
                  itemCount: myCalls.length,
                  itemBuilder: (context, index) {
                    return CallBoxView(
                      imgurl: myCalls[index]["imgurl"]!,
                      name: myCalls[index]["name"]!,
                      time: myCalls[index]["time"]!,
                      type: myCalls[index]["type"]!,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
