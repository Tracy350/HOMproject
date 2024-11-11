import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hom_project/screens/forgotpassword.dart';
import 'package:hom_project/utils/theme.dart';
import 'package:hom_project/widgets/my_button.dart';
import 'package:hom_project/widgets/my_textfield.dart';
import 'package:hom_project/widgets/squaretile.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
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
            Text(
              'Hello',
              style: GoogleFonts.montserrat(fontSize: 30),
            ),
            Text(
              'Please enter your email & password to sign in.',
              style: GoogleFonts.montserrat(fontSize: 17),
            ),
            SizedBox(
              height: 20,
            ),
            MyTextfield(
              labelText: 'Email',
              inputTextStyle: GoogleFonts.montserrat(
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.w700,
              ),
            ),
            MyTextfield(
              labelText: 'Password',
              suffixIcon: Icon(Icons.visibility),
              obscureText: true,
            ),
            _buildCheckBoxTile('Remeber me', 0),
            Divider(
              color: const Color.fromARGB(255, 215, 215, 215),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                'Forgot Password',
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w600, fontSize: 20),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(child: Divider(thickness: 1)),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    'or continue with',
                    style: GoogleFonts.montserrat(fontSize: 16),
                  ),
                ),
                Expanded(child: Divider(thickness: 1)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SquareTile(image: 'assets/apple.png'),
                SquareTile(image: 'assets/google.jpg'),
                SquareTile(image: 'assets/facebook.png')
              ],
            ),
            Spacer(),
            Divider(
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: GestureDetector(
                onTap: (){
                   Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Forgotpassword()));
                },
                child: MyButton(
                  text: 'Sign In',
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
}
