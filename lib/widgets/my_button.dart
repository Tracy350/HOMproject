import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final double? width;
  final double? height;
  final IconData? icon;
  final dynamic Color;
  final TextStyle? textStyle;

  const MyButton({
    super.key,
    required this.text,
    this.icon,
    this.height,
    this.width,
    required this.Color,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? MediaQuery.of(context).size.width,
      height: height ?? 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Color,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (icon != null) ...[
            Icon(icon),
            const SizedBox(width: 10),
          ],
          Text(
            text,
            style: textStyle,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
