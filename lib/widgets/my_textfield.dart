import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextfield extends StatelessWidget {
  final String labelText;
  final Widget? suffixIcon;
  final Icon? icon;
  final TextStyle? inputTextStyle;
  final bool obscureText;
  final TextInputType? keyboardType;
  const MyTextfield(
      {super.key, required this.labelText, this.icon, this.suffixIcon, this.inputTextStyle, this.obscureText = false, this.keyboardType});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: TextField(
        keyboardType: keyboardType,
        obscureText: obscureText,
         style: inputTextStyle ?? GoogleFonts.montserrat(fontSize: 18),
        decoration: InputDecoration(
            labelText: labelText,
            suffixIcon: suffixIcon,
          
            labelStyle: GoogleFonts.montserrat(fontSize: 20)),
      ),
    );
  }
}
