import 'package:flutter/material.dart';
import 'package:whatsapp/Dashboard/utills/custom_widget.dart';

class ChatBoxView extends StatefulWidget {
  final String imgurl;
  final String name;
  final String message;
  final String time;
  final String count;

  const ChatBoxView({
    super.key,
    required this.imgurl,
    required this.name,
    required this.message,
    required this.time,
    required this.count,
  });

  @override
  State<ChatBoxView> createState() => _ChatBoxViewState();
}

class _ChatBoxViewState extends State<ChatBoxView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
      child: Row(
        children: [
          CircleAvatar(backgroundImage: NetworkImage(widget.imgurl)),
          SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.name,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Text(
                widget.message,
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
            ],
          ),
          Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                widget.time,
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
              SizedBox(height: 3),
              Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  color: AppColors.primarycolor,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Center(
                  child: Text(
                    widget.count,
                    style: TextStyle(
                      color: AppColors.backgroundcolor,
                      fontWeight: FontWeight.bold,
                      fontSize: 8,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
