import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hom_project/utils/theme.dart';

class Seriesdetails extends StatelessWidget {
  const Seriesdetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'Physical Healing(8 Sessions)',
        style:
            GoogleFonts.montserrat(fontSize: 20, fontWeight: FontWeight.w700),
      )),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: 8,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 20, bottom: 20),
                    child: Container(
                      decoration: BoxDecoration(
                          color: AppColors.primary200,
                          borderRadius: BorderRadius.circular(20)),
                      height: 90,
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20.0, left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Physical Healing',
                                style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.w600)),
                            Text(
                              'Part ${index + 1}',
                              style: GoogleFonts.montserrat(
                                  color: AppColors.greyscale700),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
