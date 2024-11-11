import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hom_project/utils/theme.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'About Hour Of Meditation',
        style: GoogleFonts.montserrat(fontSize: 20),
      )),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Center(child: Image.asset('assets/aboutlogo.png')),
            SizedBox(
              height: 50,
            ),
            Divider(
              color: Colors.grey,
            ),
            _buildAboutListTile('Privacy Policy'),
            SizedBox(height: 20),
            _buildAboutListTile('Feedback'),
            SizedBox(height: 20),
            _buildAboutListTile('Rate Us'),
            SizedBox(height: 20),
            _buildAboutListTile('Visit Our Website'),
            SizedBox(height: 20),
            _buildAboutListTile('Follow Our Social media'),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  _buildAboutListTile(String text) {
    return Container(
        child: Row(
      children: [
        Text(
          text,
          style:
              GoogleFonts.montserrat(fontSize: 20, color: AppColors.primary400),
        ),
        Spacer(),
        Icon(Icons.arrow_forward, size: 30)
      ],
    ));
  }
}
