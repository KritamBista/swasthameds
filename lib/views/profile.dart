import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swasthameds/utils/color.dart';
import 'package:swasthameds/utils/screen.dart';
import 'package:swasthameds/utils/vGap.dart';
import 'package:swasthameds/views/user_profile.dart';
import 'package:swasthameds/widgets/profile_widget.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("Profile"),
        centerTitle: true,
      ),
      body: Container(
        color: Color(0xFFF5FDFF),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(ScreenUtils.screenWidth(context) * 0.015),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        minRadius: 30,
                        backgroundColor: appColor.grey,
                        child: CircleAvatar(
                            child: Icon(Icons.person_2_outlined),
                            backgroundColor: appColor.grey),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Text(
                            "Kritam Bista",
                            style: TextStyle(fontWeight: FontWeight.w400),
                          ),
                          Text("9816352165")
                        ],
                      ),
                    ],
                  ),
                  Icon(
                    Icons.notifications_none,
                  ),
                ],
              ),
            ),
            vGap(size: 8),
            ListTile(
              leading: const Icon(Icons.person_3_outlined),
              title: const Text("user profile"),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 15,
              ),
              onTap: () {
                Get.to(UserProfile());
              },
            ),
            const Divider(),
            ProfileWidget(
              tittle: "Address Book",
              leadingIcon: Icons.memory,
            ),
            const Divider(),
            ProfileWidget(
              tittle: "Discount Coupon",
              leadingIcon: Icons.discount_outlined,
            ),
            const Divider(),

            ProfileWidget(
              tittle: "My orderrs",
              leadingIcon: Icons.shopping_cart,
            ),
            const Divider(),

            // ProfileWidget(
            //   tittle: "",
            //   leadingIcon: Icons.person_2_outlined,
            // ),

            // const Divider(),
            // ProfileWidget(),
          ],
        ),
      ),
    );
  }
}
