import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swasthameds/controller/nav.dart';
import 'package:swasthameds/views/cart_item.dart';
import 'package:swasthameds/views/home.dart';
import 'package:swasthameds/views/menu.dart';
import 'package:swasthameds/views/profile.dart';

class BottomView extends StatelessWidget {
  final BottomNavController bottomNavController =
      Get.put(BottomNavController());

  BottomView({Key? key}) : super(key: key);

  final List<Widget> pages = [
    HomeView(),
    CartView(),
    ProfileView(),
    MenuView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          backgroundColor: Color(0xFF0F5DAF),
          showUnselectedLabels: true,
          unselectedItemColor: Colors.blue[200],
          currentIndex: bottomNavController.selectedIndex.value,
          onTap: bottomNavController.changeIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
              backgroundColor: Colors.blue[700],
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: "Carts",
              backgroundColor: Colors.blue[700],
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
              backgroundColor: Colors.blue[700],
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.menu),
              label: "Menu",
              backgroundColor: Colors.blue[700],
            ),
          ],
        ),
      ),
      body: Obx(() => pages[bottomNavController.selectedIndex.value]),
    );
  }
}
