import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hom_project/utils/theme.dart';

class Sessioncompleted extends StatelessWidget {
  const Sessioncompleted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Image.asset('assets/success.png'),
            SizedBox(
              height: 50,
            ),
            Text('Congratulations',
                style: GoogleFonts.montserrat(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: AppColors.primary400,
                )),
            SizedBox(
              height: 20,
            ),
            Text('You have completed the session',
                style: GoogleFonts.montserrat(
                    fontSize: 15, color: AppColors.primary400)),
            SizedBox(height: 30),
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                  color: AppColors.primary200,
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Column(
                  children: [
                    Text(
                        textAlign: TextAlign.center,
                        'How do you feel after this \nsession?',
                        style: GoogleFonts.montserrat(
                            fontSize: 20, fontWeight: FontWeight.w600)),
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset('assets/smile.png'),
                        Image.asset('assets/smile2.png'),
                        Image.asset('assets/smile3.png'),
                        Image.asset('assets/smile4.png')
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
