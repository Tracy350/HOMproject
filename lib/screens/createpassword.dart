import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hom_project/utils/theme.dart';
import 'package:hom_project/widgets/my_button.dart';
import 'package:hom_project/widgets/my_textfield.dart';

class Createpassword extends StatefulWidget {
  const Createpassword({super.key});

  @override
  State<Createpassword> createState() => _CreatepasswordState();
}

class _CreatepasswordState extends State<Createpassword> {
  List<bool> checkboxvalues = List<bool>.filled(6, false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
            ),
            Text('Forgot Password',
                style: GoogleFonts.montserrat(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                )),
            Text(
              'Enter your email address. We will send an OTP code for verification in the next step.',
              style: GoogleFonts.montserrat(fontSize: 15),
            ),
            SizedBox(
              height: 20,
            ),
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
            _buildCheckBoxTile('Remeber me', 0),
            Spacer(),
            Divider(
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: GestureDetector(
                onTap: () {
                  _showAlertDialog(context);
                },
                child: MyButton(
                  text: 'Continue',
                  Color: AppColors.primary300,
                  textStyle: GoogleFonts.montserrat(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildCheckBoxTile(String title, int index) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Row(
        children: [
          Checkbox(
            activeColor: AppColors.primary400,
            value: checkboxvalues[index],
            onChanged: (bool? newValue) {
              setState(() {
                checkboxvalues[index] = newValue ?? false;
              });
            },
          ),
          Text(
            title,
            overflow: TextOverflow.ellipsis,
            maxLines: 3,
            style: GoogleFonts.montserrat(
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  void _showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Container(
            height: 350,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/success.png'),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Reset Password Successful!',
                  style: GoogleFonts.montserrat(fontSize: 20),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  textAlign: TextAlign.center,
                  'Your password has been successfully changed.',
                  style: GoogleFonts.montserrat(fontSize: 20),
                ),
                SizedBox(
                  height: 20,
                ),
                MyButton(
                  text: 'Go to Home',
                  Color: AppColors.primary400,
                  textStyle: GoogleFonts.montserrat(
                      color: Colors.white, fontWeight: FontWeight.w600),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
