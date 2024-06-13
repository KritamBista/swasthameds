import 'package:flutter/material.dart';

class Heading_Text extends StatelessWidget {
  String text;
 Heading_Text({
    super.key,
    required this.text
  });

  @override
  Widget build(BuildContext context) {
    return  Text(
      "$text",
      style: TextStyle(
        fontSize: 18,
        color: Color(0xFF0E5DAE),
        fontWeight: FontWeight.bold,
      ),
    );
  }
}