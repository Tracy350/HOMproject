import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hom_project/screens/account.dart';
import 'package:hom_project/screens/analytics.dart';
import 'package:hom_project/screens/declare.dart';
import 'package:hom_project/screens/homepage.dart';
import 'package:hom_project/screens/searchpage.dart';
import 'package:hom_project/utils/theme.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedindex = 0;

  final List<Widget> _screens = [
    Homepage(),
    Declare(),
    Analytics(),
    Account(),
    DeclareSearchPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedindex],
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            buildNavBarItem(icon: Icons.home, label: 'Home', index: 0),
            buildNavBarItem(icon: Icons.play_arrow, label: 'Declare', index: 1),
            buildNavBarItem(icon: Icons.bar_chart, label: 'Analysis', index: 2),
            buildNavBarItem(
                icon: Icons.person_outline, label: 'Profile', index: 3),
          ],
        ),
      ),
    );
  }

  Widget buildNavBarItem({
    required IconData icon,
    required String label,
    required int index,
  }) {
    final isSelected = index == _selectedindex;

    return Expanded(
      child: InkWell(
        onTap: () => _onItemTapped(index),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              color: isSelected ? AppColors.primary400 : Colors.grey,
            ),
            Text(
              label,
              style: GoogleFonts.montserrat(
                color: isSelected ? AppColors.primary400 : Colors.grey,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
