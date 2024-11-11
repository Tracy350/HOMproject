import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hom_project/utils/theme.dart';
import 'package:hom_project/widgets/bottom_nav.dart';
import 'package:hom_project/widgets/my_button.dart';
import 'package:hom_project/widgets/my_textfield.dart';

class Signup6 extends StatelessWidget {
  final double progressValue;
  const Signup6({super.key, required this.progressValue});

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
              value: progressValue, 
              backgroundColor: Colors.grey[200],
              color: AppColors.primary400,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Create an Account',
              style: GoogleFonts.montserrat(fontSize: 40),
            ),
            Text(
              'Enter your account email & password.',
              style: GoogleFonts.montserrat(fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            MyTextfield(labelText: 'Email'),
            MyTextfield(
              labelText: 'Password',
              suffixIcon: Icon(Icons.visibility),
              obscureText: true,
            ),
            MyTextfield(
              labelText: 'Confirm Password',
              suffixIcon: Icon(Icons.visibility),
              obscureText: true,
            ),
            Spacer(),
            GestureDetector(
              onTap: () {
                _showAlertDialog(context);
              },
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: MyButton(
                  text: 'Get Started',
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

  void _showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Container(
            height: 300,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/signupsuccess.png'),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Sign Up Successful!',
                  style: GoogleFonts.montserrat(fontSize: 20),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  textAlign: TextAlign.center,
                  'Your account has been created. Welcome to the Hour Of Meditation.',
                  style: GoogleFonts.montserrat(fontSize: 20),
                )
              ],
            ),
          ),
        );
      },
    );
    Future.delayed(Duration(milliseconds: 3000), () {
      Navigator.pop(context); // Close the dialog
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => BottomNav()), // Replace with your next page
      );
    });
  }
}
