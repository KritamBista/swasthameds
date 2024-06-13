import 'package:flutter/material.dart';

class vGap extends StatelessWidget {
  double size;
 vGap({
    super.key,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: size
    );
  }
}