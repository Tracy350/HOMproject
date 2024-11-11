import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DeclareSearchPage extends StatefulWidget {
  const DeclareSearchPage({super.key});

  @override
  State<DeclareSearchPage> createState() => _DeclareSearchPageState();
}

class _DeclareSearchPageState extends State<DeclareSearchPage> {
  TextEditingController searchController = TextEditingController();
  Timer? _debounce; // Declare _debounce as Timer? type

  final List<Map<String, String>> declareData = [
    {'declaretitle': 'Intro', 'declaresubtext': '10 Sessions'},
    {'declaretitle': 'I am Powerful', 'declaresubtext': '8 Sessions'},
    {'declaretitle': 'I can do it', 'declaresubtext': '8 Sessions'},
    {'declaretitle': 'I am invisible', 'declaresubtext': '8 Sessions'},
    {'declaretitle': 'Divine Favor', 'declaresubtext': '8 Sessions'},
    // Add more items as needed
  ];

  List<Map<String, String>> filteredDeclare = [];

  @override
  void initState() {
    super.initState();
    filteredDeclare = List.from(declareData);
  }

  @override
  void dispose() {
    _debounce?.cancel();
    searchController.dispose();
    super.dispose();
  }

  void filterDeclare() {
    String query = searchController.text.trim().toLowerCase();
    setState(() {
      if (query.isNotEmpty) {
        filteredDeclare = declareData.where((declare) {
          final title = declare['declaretitle']!.toLowerCase();
          return title.contains(query);
        }).toList();
      } else {
        filteredDeclare = List.from(declareData);
      }
    });
  }

  void onSearchChanged() {
    if (_debounce?.isActive ?? false) _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 300), filterDeclare);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Declare Search"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: TextField(
                controller: searchController,
                onChanged: (_) => onSearchChanged(),
                decoration: InputDecoration(
                  fillColor: Colors.grey[200],
                  filled: true,
                  hintText: 'Search Declare',
                  hintStyle: const TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemCount: filteredDeclare.length,
              itemBuilder: (context, index) {
                final declare = filteredDeclare[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 5.0, horizontal: 10.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              DeclareDetailPage(declare: declare),
                        ),
                      );
                    },
                    child: DeclareCard(
                      declaretitle: declare['declaretitle']!,
                      declaresubtext: declare['declaresubtext']!,
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

class DeclareDetailPage extends StatelessWidget {
  final Map<String, String> declare;
  const DeclareDetailPage({required this.declare, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(declare['declaretitle']!)),
      body: Center(
        child: Text(
            '${declare['declaresubtext']} available in ${declare['declaretitle']}'),
      ),
    );
  }
}

class DeclareCard extends StatelessWidget {
  final String declaretitle;
  final String declaresubtext;
  const DeclareCard(
      {required this.declaretitle, required this.declaresubtext, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Container(
        height: 70,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            const CircleAvatar(
              radius: 25,
              backgroundImage:
                  AssetImage('assets/Play.png'), // Path to your asset
            ),
            const SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  declaretitle,
                  style: GoogleFonts.montserrat(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(
                  declaresubtext,
                  style:
                      GoogleFonts.montserrat(fontSize: 12, color: Colors.grey),
                ),
              ],
            ),
            Spacer(),
            Icon(Icons.close),
          ],
        ),
      ),
    );
  }
}
