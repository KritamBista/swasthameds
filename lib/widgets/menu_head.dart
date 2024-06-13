import 'package:flutter/material.dart';
import 'package:swasthameds/utils/color.dart';
import 'package:swasthameds/utils/screen.dart';

class MenuHead extends StatelessWidget {
  MenuHead({
    super.key,
    required this.text,
  });
String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        children: [
          Padding(
              padding: EdgeInsets.all(ScreenUtils.screenWidth(context) * 0.015),
              child: Text(
                "$text",
                style: TextStyle(
                    color: appColor.heading_color, fontWeight: FontWeight.bold),
              )),
        ],
      ),
    );
  }
}