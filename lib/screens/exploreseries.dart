import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hom_project/screens/seriesdetails.dart';
import 'package:hom_project/utils/theme.dart';

class Exploreseries extends StatelessWidget {
  Exploreseries({super.key});
  final List<Map<String, String>> seriesData = [
    {'title': 'Physical Healing', 'sessions': '10 Sessions'},
    {'title': 'Divine Favor', 'sessions': '8 Sessions'},
    {'title': 'Divine Favor', 'sessions': '8 Sessions'},
    {'title': 'Divine Favor', 'sessions': '8 Sessions'},
    {'title': 'Divine Favor', 'sessions': '8 Sessions'},
    {'title': 'Divine Favor', 'sessions': '8 Sessions'},
    {'title': 'Divine Favor', 'sessions': '8 Sessions'},
    {'title': 'Divine Favor', 'sessions': '8 Sessions'},
    {'title': 'Divine Favor', 'sessions': '8 Sessions'},
    {'title': 'Divine Favor', 'sessions': '8 Sessions'},
    {'title': 'Divine Favor', 'sessions': '8 Sessions'},
    // Add more series as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Explore by Series',
          style: GoogleFonts.montserrat(fontSize: 20),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 10,
                childAspectRatio: 3 / 2),
            itemCount: seriesData.length,
            itemBuilder: (context, index) {
              final series = seriesData[index];
              return GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Seriesdetails()));
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: AppColors.primary200,
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          series['title']!,
                          style: GoogleFonts.montserrat(
                              color: AppColors.primary400,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          series['sessions']!,
                          style: GoogleFonts.montserrat(
                              color: AppColors.greyscale700, fontSize: 18),
                        )
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
