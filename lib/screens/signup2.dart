import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hom_project/screens/signup3.dart';
import 'package:hom_project/utils/theme.dart';
import 'package:hom_project/widgets/my_button.dart';

class Signup2 extends StatefulWidget {
  final double progressValue;
  const Signup2({super.key, required this.progressValue});

  @override
  State<Signup2> createState() => _Signup2State();
}

class _Signup2State extends State<Signup2> {
  int selectedIndex = -1;

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
              value: widget.progressValue, 
              backgroundColor: Colors.grey[200],
              color: AppColors.primary400,
            ),
            Text(
              'Choose your Age',
              style: GoogleFonts.montserrat(fontSize: 40),
            ),
            Text(
              'Select from the options below:',
              style: GoogleFonts.montserrat(fontSize: 20),
            ),
            SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  childAspectRatio: 5,
                  mainAxisSpacing: 20,
                ),
                itemCount: 8,
                itemBuilder: (context, index) {
                  final isSelected = index == selectedIndex;
                  return GestureDetector(
                    onTap: () => _selectOption(index),
                    child: Container(
                      width: 200,
                      height: 100,
                      decoration: BoxDecoration(
                          color:
                              isSelected ? AppColors.primary400 : Colors.white,
                          border: Border.all(color: AppColors.primary400),
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Text(
                          _getAgeLabel(index),
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                              fontSize: 20,
                              color: isSelected
                                  ? Colors.white
                                  : AppColors.primary400,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Signup3(progressValue: 0.48)));
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

  void _selectOption(int index) {
    setState(() {
      selectedIndex = index; // Update the selected index
    });
  }

  String _getAgeLabel(int index) {
    switch (index) {
      case 0:
        return '14 - 17';
      case 1:
        return '18 - 24';
      case 2:
        return '25 - 29';
      case 3:
        return '30 - 34';
      case 4:
        return '35 - 39';
      case 5:
        return '40 - 44';
      case 6:
        return '45 - 49';
      default:
        return '≥ 50';
    }
  }
}
