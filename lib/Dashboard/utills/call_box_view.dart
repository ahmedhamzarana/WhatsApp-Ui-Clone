import 'package:flutter/material.dart';

class CallBoxView extends StatefulWidget {
  const CallBoxView({super.key});

  @override
  State<CallBoxView> createState() => _CallBoxViewState();
}

class _CallBoxViewState extends State<CallBoxView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(
              "https://upload.wikimedia.org/wikipedia/commons/0/06/Nissan_Skyline_GT-R_R34_V_Spec_II.jpg",
            ),
          ),
          SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Rohan",
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.call_received_outlined,
                        size: 15,
                        color: Colors.red,
                      ),
                      SizedBox(width: 4),
                      Text(
                        "43 miuntes ago",
                        style: TextStyle(color: Colors.black, fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Spacer(),
          Column(
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.call_outlined)),
            ],
          ),
        ],
      ),
    );
  }
}
