import 'package:flutter/material.dart';

class CallBoxView extends StatelessWidget {
  final String imgurl;
  final String name;
  final String time;
  final String type; // "received", "made", "missed"

  const CallBoxView({
    super.key,
    required this.imgurl,
    required this.name,
    required this.time,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    // Determine icon and color based on call type
    IconData callIcon;
    Color iconColor;

    switch (type) {
      case "made":
        callIcon = Icons.call_made;
        iconColor = Colors.green;
        break;
      case "missed":
        callIcon = Icons.call_missed;
        iconColor = Colors.red;
        break;
      case "received":
      default:
        callIcon = Icons.call_received;
        iconColor = Colors.blue;
        break;
    }

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
      child: Row(
        children: [
          CircleAvatar(
            radius: 25,
            backgroundImage: NetworkImage(imgurl),
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                ),
              ),
              Row(
                children: [
                  Icon(
                    callIcon,
                    size: 16,
                    color: iconColor,
                  ),
                  SizedBox(width: 5),
                  Text(
                    time,
                    style: TextStyle(color: Colors.grey[700], fontSize: 12),
                  ),
                ],
              ),
            ],
          ),
          Spacer(),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.call_outlined,
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}
