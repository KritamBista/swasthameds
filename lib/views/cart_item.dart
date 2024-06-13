import 'package:flutter/material.dart';
import 'package:swasthameds/utils/screen.dart';
import 'package:swasthameds/utils/vGap.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    print("Hello guys");
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My Cart",
          style: TextStyle(fontWeight: FontWeight.w400),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          child: Container(
        color: const Color(0xFFF5FDFF),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(7.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.check_box_outline_blank),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        "Select All",
                        style: TextStyle(fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  Text(
                    "Delete",
                    style: TextStyle(
                        color: Color(0xFF0E5DAE), fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            const Divider(),
            Container(
              padding: const EdgeInsets.all(7),
              height: 150,
              width: ScreenUtils.screenWidth(context),
              decoration: const BoxDecoration(color: Colors.white),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(child: Icon(Icons.check_box_outline_blank)),
                      ],
                    ),
                  ),
                  Image.asset(
                    "assets/images/2.png",
                    height: 130,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Sanson marcha stretch mark cream 200ml",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      vGap(size: 5),
                      Container(
                        width: 300,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Rs.1600.00",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(10)),
                                      border: Border.all(
                                          color: const Color(0xFFE8E8E8))),
                                  child: Center(
                                    heightFactor: 0.6,
                                    widthFactor: 0.8,
                                    child: Row(
                                      children: [
                                        IconButton(
                                          padding: const EdgeInsets.all(2),
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.remove,
                                            color: Color(0xFF13ADE1),
                                          ),
                                        ),
                                        const Text('1',
                                            style: TextStyle(fontSize: 18)),
                                        IconButton(
                                          padding: const EdgeInsets.all(2),
                                          onPressed: () {},
                                          icon: const Icon(Icons.add,
                                              color: Color(0xFF13ADE1)),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const Text(
                                  "Pack Size : 200 ML pack",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFF615B59),
                                      fontSize: 12),
                                ),
                                const Text(
                                  "Remove",
                                  style: TextStyle(color: Color(0xFFF3A563)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
