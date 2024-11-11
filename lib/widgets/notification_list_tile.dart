import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hom_project/utils/theme.dart';

class NotificationListtile extends StatefulWidget {
  const NotificationListtile({super.key, required this.title});

  final String title;

  @override
  State<NotificationListtile> createState() => _NotificationListtileState();
}

class _NotificationListtileState extends State<NotificationListtile> {
  bool lights = false;
  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      value: lights,
      onChanged: (bool value) {
        setState(() {
          lights = value;
        });
      },
      activeColor: AppColors.primary400,
      title: Text(
        widget.title,
        style: GoogleFonts.montserrat(
          textStyle: const TextStyle(color: Colors.black, fontSize: 18),
        ),
      ),
    );
  }
}
