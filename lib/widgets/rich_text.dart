import 'package:flutter/material.dart';

class PriceText extends StatelessWidget {
  const PriceText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(TextSpan(children: [
      const TextSpan(
          text: "Price :",
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15)),
      TextSpan(
          text: " Rs.1,600.00",
          style: TextStyle(
              color: Colors.lightBlue[900],
              fontWeight: FontWeight.bold,
              fontSize: 15)),
    ]));
  }
}
