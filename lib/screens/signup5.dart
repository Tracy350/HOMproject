import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hom_project/screens/signup6.dart';
import 'package:hom_project/utils/theme.dart';
import 'package:hom_project/widgets/my_button.dart';
import 'package:hom_project/widgets/my_textfield.dart';

class Signup5 extends StatelessWidget {
  final double progressValue;
  const Signup5({super.key, required this.progressValue});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            LinearProgressIndicator(
              value: progressValue,
              backgroundColor: Colors.grey[200],
              color: AppColors.primary400,
            ),
            Text(
              'Complete Your Profile',
              style: GoogleFonts.montserrat(fontSize: 40),
            ),
            Text(
              'Don\'t worry, only you can see your personal data. No one else will be able to see it.',
              style: GoogleFonts.montserrat(fontSize: 20),
            ),
            Stack(
              children: [
                CircleAvatar(
                  child: Image.asset(
                    'assets/profile.png',
                    scale: 0.1,
                  ),
                  radius: 80,
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10)),
                    child: Icon(
                      Icons.edit,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
            MyTextfield(
              labelText: 'Full Name',
              inputTextStyle: GoogleFonts.montserrat(
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.w700,
              ),
            ),
            MyTextfield(
              labelText: 'Phone Number',
            ),
            MyTextfield(
              labelText: 'Date of Birth',
              suffixIcon: Icon(Icons.calendar_month),
              keyboardType: TextInputType.datetime,
            ),
            MyTextfield(
                labelText: 'Country', suffixIcon: Icon(Icons.arrow_drop_down)),
            Spacer(),
            GestureDetector(
              onTap: () {
                // Navigate to the next screen
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Signup6(
                            progressValue: 1.0,
                          )), // Replace with the actual screen you want to navigate to
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
}
