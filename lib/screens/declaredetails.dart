import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hom_project/screens/sessioncompleted.dart';
import 'package:hom_project/utils/theme.dart';

class Declaredetails extends StatelessWidget {
  const Declaredetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GestureDetector(
        onTap: (){
             Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Sessioncompleted()));
        },
        child: Column(
          children: [
            Text('I am Powerful',
                style: GoogleFonts.montserrat(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    color: AppColors.primary400)),
            Center(child: Image.asset('assets/playdetails.png')),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 50.0),
              child: Column(
                children: [
                  const Divider(
                    color: Colors.black,
                    thickness: 4,
                    indent: 30,
                    endIndent: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Row(
                      children: [
                        Text(
                          '01:30',
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          '30:30',
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
