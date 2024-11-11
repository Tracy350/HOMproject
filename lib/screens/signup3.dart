import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hom_project/screens/signup4.dart';
import 'package:hom_project/utils/theme.dart';
import 'package:hom_project/widgets/my_button.dart';

class Signup3 extends StatefulWidget {
  final double progressValue;
  const Signup3({super.key, required this.progressValue});

  @override
  State<Signup3> createState() => _Signup3State();
}

class _Signup3State extends State<Signup3> {
  List<bool> checkboxvalues = List<bool>.filled(6, false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    LinearProgressIndicator(
                      value: widget.progressValue, 
                      backgroundColor: Colors.grey[200],
                      color: AppColors.primary400,
                    ),
                    Text(
                      'What are your goals with Christian meditation?',
                      style: GoogleFonts.montserrat(fontSize: 40),
                    ),
                    Text(
                      'Select from the options below:',
                      style: GoogleFonts.montserrat(fontSize: 20),
                    ),
                    SizedBox(height: 20),
                    Column(
                      children: [
                        _buildCheckBoxTile('Mental (Anxiety, Focus, etc.)', 0),
                        _buildCheckBoxTile('Emotional (Regulation, etc.)', 1),
                        _buildCheckBoxTile(
                            'Physical (Athletics, Fitness, etc.)', 2),
                        _buildCheckBoxTile(
                          'Spiritual (Intimacy With Jesus, Reading The Word, etc.)',
                          3,
                        ),
                        _buildCheckBoxTile(
                            'General (Visualization, Quietness)', 4),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            // Button anchored at the bottom
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Signup4(progressValue: 0.64)),
                  );
                },
                child: MyButton(
                  text: 'Continue',
                  Color: AppColors.primary300,
                  textStyle: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCheckBoxTile(String title, int index) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Container(
        height: 70,
        decoration: BoxDecoration(
          color: AppColors.primary200,
          borderRadius: BorderRadius.circular(20),
        ),
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
            Flexible(
              child: Text(
                title,
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
                style: GoogleFonts.montserrat(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
