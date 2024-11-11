import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hom_project/screens/signup5.dart';
import 'package:hom_project/utils/theme.dart';
import 'package:hom_project/widgets/my_button.dart'; // Import your button widget

class Signup4 extends StatefulWidget {
   final double progressValue;
  const Signup4({super.key, required this.progressValue});

  @override
  State<Signup4> createState() => _Signup4State();
}

class _Signup4State extends State<Signup4> {
  int _value = 1; // Default selected value

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             LinearProgressIndicator(
              value: widget.progressValue, 
              backgroundColor: Colors.grey[200],
              color: AppColors.primary400,
            ),
            Text(
              'How Long Do You Want to Spend in Meditation?',
              style: GoogleFonts.montserrat(fontSize: 40),
            ),
            Text(
              'Select from the options below:',
              style: GoogleFonts.montserrat(fontSize: 20),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Column(
                children: [
                  _buildRadioTile('Less than 15 minutes / day', 1),
                  _buildRadioTile('Between 15 - 30 minutes / day', 2),
                  _buildRadioTile('Between 30 - 60 minutes / day', 3),
                  _buildRadioTile('More than 60 minutes / day', 4),
                  _buildRadioTile('I haven\'t decided yet', 4),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                // Navigate to the next screen
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          Signup5(progressValue: 0.8,)), // Replace with the actual screen you want to navigate to
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: MyButton(
                  text: 'Continue',
                  Color: AppColors.primary300,
                  textStyle: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRadioTile(String title, int value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Container(
        height: 70,
        decoration: BoxDecoration(
          color: AppColors.primary200,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Radio<int>(
              activeColor: AppColors.primary400,
              value: value,
              groupValue: _value,
              onChanged: (int? newValue) {
                setState(() {
                  _value = newValue!;
                });
              },
            ),
            Text(
              title,
              style: GoogleFonts.montserrat(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
