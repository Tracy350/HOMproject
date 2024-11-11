import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hom_project/screens/signin.dart';
import 'package:hom_project/screens/signup1.dart';
import 'package:hom_project/utils/theme.dart';
import 'package:hom_project/widgets/my_button.dart';

class Welcomescreen extends StatelessWidget {
  const Welcomescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary200,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 70),
          Center(child: Image.asset('assets/getstarted.png')),
          Text(
            'Hour of \n Meditation',
            textAlign: TextAlign.center,
            style: GoogleFonts.montserrat(
                fontSize: 50, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          Text(
            'Discover the profound impact of guided \nChristian meditation. Welcome to HoM.',
            textAlign: TextAlign.center,
            style: GoogleFonts.montserrat(fontSize: 20),
          ),
          const SizedBox(height: 100),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: MyButton(
              text: 'Continue with Google',
              Color: Colors.white,
              icon: Icons.alarm, // Replace with Google icon if available
              textStyle: GoogleFonts.montserrat(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
          ),
          const SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Signup1()),
              );
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: MyButton(
                text: 'Get Started',
                Color: AppColors.secondary200,
                textStyle: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Signin()));
              },
              child: Text(
                'I Already have an account',
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
