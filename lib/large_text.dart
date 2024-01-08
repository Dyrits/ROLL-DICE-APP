import "package:flutter/material.dart";

class LargeText extends StatelessWidget {
  final String text;
  final Color color;

  const LargeText({super.key, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: 40, color: color),
    );
  }
}