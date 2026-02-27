import 'package:flutter/material.dart';
import 'package:whatsapp/utils/app_colors.dart';

class StatusBoxView extends StatelessWidget {
  const StatusBoxView({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.backgroundcolor,
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Status ring
            Container(
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.green, // WhatsApp status color
                  width: 3,
                ),
              ),
              child: const CircleAvatar(
                radius: 28,
                backgroundImage: AssetImage(
                  "assets/images/profile.jpg", // your image path
                ),
              ),
            ),

            const SizedBox(height: 8),

            // User name
            const Text(
              "My Status",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}