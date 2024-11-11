import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hom_project/widgets/notification_list_tile.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
        children: [
          Text(
            'Notification',
            style: GoogleFonts.montserrat(fontSize: 20),
          ),
          Spacer(),
          Icon(
            Icons.edit,
            size: 30,
          )
        ],
      )),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Notify me when..,',
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w600, fontSize: 20),
            ),
            NotificationListtile(title: 'There\'s a new medition Topic'),
            NotificationListtile(title: 'Enable App System Notification'),
            NotificationListtile(title: 'New Services Available'),
          ],
        ),
      ),
    );
  }
}
