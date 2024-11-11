import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hom_project/screens/declaredetails.dart';
import 'package:hom_project/screens/searchpage.dart';

class Declare extends StatelessWidget {
  final List<Map<String, String>> declareData = [
    {'declaretitle': 'Intro', 'declaresubtext': '10 Sessions'},
    {'declaretitle': 'I am Powerful', 'declaresubtext': '8 Sessions'},
    {'declaretitle': 'I can do it', 'declaresubtext': '8 Sessions'},
    {'declaretitle': 'I am invisible', 'declaresubtext': '8 Sessions'},
    {'declaretitle': 'Divine Favor', 'declaresubtext': '8 Sessions'},
    {'declaretitle': 'Divine Favor', 'declaresubtext': '8 Sessions'},
    {'declaretitle': 'Divine Favor', 'declaresubtext': '8 Sessions'},
    {'declaretitle': 'Divine Favor', 'declaresubtext': '8 Sessions'},
    {'declaretitle': 'Divine Favor', 'declaresubtext': '8 Sessions'},
    {'declaretitle': 'Divine Favor', 'declaresubtext': '8 Sessions'},
    {'declaretitle': 'Divine Favor', 'declaresubtext': '8 Sessions'},
    // Add more series as needed
  ];
  Declare({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Image.asset('assets/homelogo.png', height: 40),
            SizedBox(width: 20),
            Text(
              'Declare',
              style: GoogleFonts.montserrat(fontSize: 25),
            ),
            Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DeclareSearchPage()));
              },
              child: Icon(
                Icons.search,
                size: 30,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        // Wrap in SingleChildScrollView
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap:
                  true, // This ensures ListView does not expand infinitely
              physics:
                  NeverScrollableScrollPhysics(), // Disable inner scrolling
              itemCount: 10, // Add item count as needed

              itemBuilder: (context, index) {
                final declare = declareData[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 16.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Declaredetails()));
                    },
                    child: Container(
                      height: 70,
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundImage:
                                AssetImage('assets/Play.png'), // Corrected here
                          ),
                          SizedBox(width: 15),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                declare['declaretitle']!,
                                style: GoogleFonts.montserrat(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                declare['declaresubtext']!,
                                style: GoogleFonts.montserrat(
                                    fontSize: 12, color: Colors.grey),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
