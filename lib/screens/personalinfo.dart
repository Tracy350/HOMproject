import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hom_project/widgets/my_textfield.dart';

class Personalinfo extends StatelessWidget {
  const Personalinfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
        children: [
          Text(
            'Personal info',
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
          children: [
            Center(
              child: CircleAvatar(
                child: Image.asset(
                  'assets/profile.png',
                  scale: 0.1,
                ),
                radius: 80,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Divider(
              color: const Color.fromARGB(255, 216, 216, 216),
            ),
            SizedBox(
              height: 20,
            ),
            MyTextfield(
              labelText: 'Full Name',
              inputTextStyle: GoogleFonts.montserrat(
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            MyTextfield(
              labelText: 'Email',
              inputTextStyle: GoogleFonts.montserrat(
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            MyTextfield(
              labelText: 'Phone Number',
            ),
            SizedBox(
              height: 10,
            ),
            MyTextfield(
              labelText: 'Date of Birth',
              suffixIcon: Icon(Icons.calendar_month),
              keyboardType: TextInputType.datetime,
            ),
            SizedBox(
              height: 10,
            ),
            MyTextfield(
                labelText: 'Country', suffixIcon: Icon(Icons.arrow_drop_down)),
          ],
        ),
      ),
    );
  }
}
