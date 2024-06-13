import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  Button({
    super.key,
    required this.buttonwidth,
    required this.buttonheight,
    required this.onPressed,
  });

  final double buttonwidth;
  final double buttonheight;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: const Text("ADD TO CART",
          style: TextStyle(
            fontSize: 14,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          )),
      style: ElevatedButton.styleFrom(
          fixedSize: Size(buttonwidth, buttonheight),
          backgroundColor:  Color(0xFF13ADE1),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
    );
  }
}
