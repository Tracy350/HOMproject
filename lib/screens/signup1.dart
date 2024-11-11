import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hom_project/screens/signup2.dart';
import 'package:hom_project/utils/theme.dart';
import 'package:hom_project/widgets/my_button.dart';

class Signup1 extends StatefulWidget {
  const Signup1({super.key});

  @override
  State<Signup1> createState() => _Signup1State();
}

class _Signup1State extends State<Signup1> {
  int _value = 1;
  final double progressValue = 0.16;
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
            Text(
              'What is your gender?',
              style: GoogleFonts.montserrat(fontSize: 40),
            ),
            Text(
              'Select from the options below:',
              style: GoogleFonts.montserrat(fontSize: 20),
            ),
            Row(
              children: [
                Radio(
                    activeColor: AppColors.primary400,
                    value: 1,
                    groupValue: _value,
                    onChanged: (value) {
                      setState(() {
                        _value = value!;
                      });
                    }),
                Text('I am male', style: GoogleFonts.montserrat(fontSize: 20)),
              ],
            ),
            Row(
              children: [
                Radio(
                    activeColor: AppColors.primary400,
                    value: 2,
                    groupValue: _value,
                    onChanged: (value) {
                      setState(() {
                        _value = value!;
                      });
                    }),
                Text(
                  'I am female',
                  style: GoogleFonts.montserrat(fontSize: 20),
                ),
              ],
            ),
            Row(
              children: [
                Radio(
                    activeColor: AppColors.primary400,
                    value: 3,
                    groupValue: _value,
                    onChanged: (value) {
                      setState(() {
                        _value = value!;
                      });
                    }),
                Text('Rather not say',
                    style: GoogleFonts.montserrat(fontSize: 20)),
              ],
            ),
            Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Signup2(progressValue: 0.32)));
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
            )
          ],
        ),
      ),
    );
  }
}
