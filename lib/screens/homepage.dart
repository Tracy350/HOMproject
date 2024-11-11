import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hom_project/screens/exploreseries.dart';
import 'package:hom_project/utils/theme.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Image.asset('assets/homelogo.png'),
            SizedBox(
              width: 20,
            ),
            Text('Hello, Dr. Tsikata',
                style: GoogleFonts.montserrat(fontSize: 25)),
            Spacer(),
            Icon(
              Icons.search,
              size: 30,
            ),
            SizedBox(
              width: 20,
            ),
            Icon(
              Icons.notification_add_outlined,
              size: 30,
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 200,
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                    color: AppColors.primary400,
                    borderRadius: BorderRadius.circular(20)),
                child: Stack(
                  children: [
                    Positioned(
                        right: 0, child: Image.asset('assets/cardimage.png')),
                    Positioned(
                      top: 50,
                      left: 20,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Welcome HoM',
                              style: GoogleFonts.montserrat(
                                  fontSize: 20, color: Colors.white)),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Get connected with \nGod and yourself on a \ndeeper level.',
                            style: GoogleFonts.montserrat(
                                fontSize: 15, color: Colors.white),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(16.0),
                height: 100,
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(255, 202, 202, 202),
                        offset: const Offset(
                          5.0,
                          5.0,
                        ),
                        blurRadius: 10.0,
                        spreadRadius: 2.0,
                      )
                    ],
                    color: AppColors.primary200,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Watch HoM Live',
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: AppColors.primary400),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Every Saturday at 9AM MST',
                      style: GoogleFonts.montserrat(
                          color: AppColors.greyscale700, fontSize: 15),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Text(
                    'Explore by Series',
                    style: GoogleFonts.montserrat(
                        fontSize: 25, color: AppColors.primary400),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Exploreseries()));
                    },
                    child: Icon(
                      Icons.arrow_forward,
                      size: 30,
                    ),
                  )
                ],
              ),
              _buildSeriesCard(
                  'assets/cardimage.png',
                  'Physical Healing',
                  'Experience divine \nhealing in your physical \nbody.',
                  context),
              SizedBox(
                height: 20,
              ),
              _buildSeriesCard(
                  'assets/cardimage2.png',
                  'Divine Secrets',
                  'Feel less stressed and \nmore mindfullness with \nmeditation',
                  context),
              SizedBox(
                height: 20,
              ),
              _buildSeriesCard(
                  'assets/cardimage3.png',
                  'Divine Favour',
                  'Favour is the next step \nyou need. Step into that \nreality with this series',
                  context)
            ],
          ),
        ),
      ),
    );
  }

  _buildSeriesCard(String seriesimage, String seriestitle, String seriessubtext,
      BuildContext context) {
    return Container(
      height: 170,
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
          color: AppColors.primary200, borderRadius: BorderRadius.circular(20)),
      child: Stack(
        children: [
          Positioned(right: 0, child: Image.asset(seriesimage)),
          Positioned(
            top: 50,
            left: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(seriestitle,
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: AppColors.primary400)),
                SizedBox(
                  height: 10,
                ),
                Text(
                  seriessubtext,
                  style: GoogleFonts.montserrat(
                      fontSize: 15, color: AppColors.primary400),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
