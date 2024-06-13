import 'package:flutter/material.dart';
import 'package:swasthameds/utils/color.dart';
import 'package:swasthameds/utils/vGap.dart';
import 'package:swasthameds/widgets/menu_head.dart';
import 'package:swasthameds/widgets/profile_widget.dart';

class MenuView extends StatelessWidget {
  const MenuView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appColor.white,
        scrolledUnderElevation: 0.0,
        elevation: 0.0,
        title: const Text("Menu"),
        centerTitle: true,
      ),
      body: Container(
        color: appColor.bgColor,
        child: Column(
          children: [
            vGap(size: 6),
            MenuHead(
              text: "Find",
            ),
            ProfileWidget(tittle: "Blood Bank", leadingIcon: Icons.water_drop),
            const Divider(),
            ProfileWidget(
                tittle: "Ambulance", leadingIcon: Icons.local_hospital),
            const Divider(),
            ProfileWidget(tittle: "Hospital", leadingIcon: Icons.water_drop),
            const Divider(),
            ProfileWidget(tittle: "BMI", leadingIcon: Icons.water_drop),
          const  Divider(),
            ProfileWidget(
                tittle: "Health Library",
                leadingIcon: Icons.lightbulb_outline_sharp),
            const Divider(),
            MenuHead(text: "More"),
          ],
        ),
      ),
    );
  }
}
