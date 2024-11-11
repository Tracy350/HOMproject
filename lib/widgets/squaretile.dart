import 'package:flutter/material.dart';

class SquareTile extends StatelessWidget {
  final String image;
  const SquareTile({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80, // Adjust width as needed
      height: 60, // Adjust height as needed
      margin: const EdgeInsets.only(top: 30),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(20) // Border color
          ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Image.asset(
          image,
        ),
      ),
    );
  }
}
