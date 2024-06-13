import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swasthameds/components/carousel.dart';
import 'package:swasthameds/components/category.dart';
import 'package:swasthameds/components/product.dart';
import 'package:swasthameds/components/trendingP.dart';
import 'package:swasthameds/utils/routes.dart';
import 'package:swasthameds/utils/vGap.dart';
import 'package:swasthameds/views/category_details.dart';
import 'package:swasthameds/widgets/drawer.dart';
import 'package:swasthameds/widgets/heading_text.dart';
import 'package:swasthameds/widgets/search.dart';
import 'package:swasthameds/widgets/sub_text.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    print("HEllo world");
    double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        drawer: const Drawer(
            shape: BeveledRectangleBorder(),
            backgroundColor: Color(0xFFF8F8F8),
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "All category",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
                  ),
                  Divider(),
                  DrawerWidget()
                ],
              ),
            )),
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          scrolledUnderElevation: 0.0,
          forceMaterialTransparency: true,
          title: Padding(
            padding: const EdgeInsets.all(1.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/1.png",
                  width: MediaQuery.of(context).size.width * 0.16,
                  height: MediaQuery.of(context).size.height * 0.16,
                ),
                const Expanded(child: SearchWidget())
              ],
            ),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Container(
            color: Color(0xFFF5FDFF),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    padding: EdgeInsets.all(screenWidth * 0.015),
                    child: const CarouselWidget()),
                vGap(
                  size: 4,
                ),
                // Catgories and Top Brand Products
                Container(
                    padding: EdgeInsets.all(screenWidth * 0.02),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        // CategoryComponent
                        InkWell(
                            onTap: () {
                              Get.toNamed(AppRoute.catDetailView);
                            },
                            child: const CategoryWidget()),
                        // ProductComponent
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Heading_Text(
                              text: "Top Brand Products",
                            ),
                            const SubText(),
                          ],
                        ),
                        vGap(
                          size: 3,
                        ),
                        const ProductComponent(),
                      ],
                    )),

                // Trending Component
                Container(
                  padding: EdgeInsets.all(screenWidth * 0.015),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Heading_Text(
                            text: "Trending",
                          ),
                          const SubText(),
                        ],
                      ),
                      vGap(size: 3),
                      const ProductComponent(),
                      // vGap(
                      //   size: 7,
                      // ),
                    ],
                  ),
                ),
                // Category Component
                vGap(size: 0),
                ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: EdgeInsets.all(screenWidth * 0.015),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Heading_Text(
                                  text: "Baby & Care",
                                ),
                                const SubText(),
                              ],
                            ),
                            vGap(size: 3),
                            const ProductComponent(),
                          ],
                        ),
                      );
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
