import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hom_project/widgets/notification_list_tile.dart';

class Security extends StatelessWidget {
  const Security({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
        children: [
          Text(
            'Security',
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
           
            NotificationListtile(title: 'Remeber Me'),
            NotificationListtile(title: 'Biometric ID'),
            NotificationListtile(title: 'Face ID'),
             NotificationListtile(title: 'SMS Authenticator'),
              NotificationListtile(title: 'Google Authenticator'),
          ],
        ),
      ),
    );
  }
}
