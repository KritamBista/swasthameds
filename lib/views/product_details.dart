import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swasthameds/utils/screen.dart';
import 'package:swasthameds/utils/vGap.dart';
import 'package:swasthameds/widgets/button.dart';
import 'package:swasthameds/widgets/heading_text.dart';
import 'package:swasthameds/widgets/product_card.dart';
import 'package:swasthameds/widgets/related_product.dart';
import 'package:swasthameds/widgets/rich_text.dart';
import 'package:swasthameds/widgets/search.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    List imgList = [
      {
        "id": 1,
        "path": "assets/images/2.png",
      },
      {
        "id": 2,
        "path": "assets/images/2.png",
      }
    ];

    return SafeArea(
        child: Scaffold(
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: Button(
        buttonwidth: Get.width,
        buttonheight: ScreenUtils.screenHeight(context) * 0.057,
        onPressed: () {},
      ),
      appBar: AppBar(
        title: const SearchWidget(),
        actions: const [
          Icon(
            Icons.share_sharp,
            color: Colors.black,
          ),
          Icon(
            Icons.shopping_cart,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: const Color(0xFFF5FDFF),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CarouselSlider(
                  options: CarouselOptions(
                      height: ScreenUtils.screenHeight(context) * 0.25,
                      scrollPhysics: const BouncingScrollPhysics(),
                      autoPlay: true,
                      aspectRatio: 16 / 9,
                      enlargeCenterPage: true,
                      viewportFraction: 1),
                  items: imgList.map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                            width: MediaQuery.of(context).size.width,
                            margin: const EdgeInsets.symmetric(horizontal: 5.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(60)),
                            child: Image.asset(
                              i['path'],
                              fit: BoxFit.contain,
                            ));
                      },
                    );
                  }).toList(),
                ),
                Container(
                  color: Colors.white,
                  child: Container(
                    padding:
                        EdgeInsets.all(ScreenUtils.screenWidth(context) * 0.02),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Sanson marcha anti strech mark cream 200 ml ",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                        const Text("Storage: Store in cold temperature"),
                        const PriceText(),
                        Row(
                          children: [
                            const Text('Quantity :',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500)),
                            const SizedBox(height: 8),
                            Container(
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.zero),
                                  color: Colors.white10),
                              child: Row(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.remove),
                                  ),
                                  const Text(
                                    '1',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.add),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                vGap(size: 4),
                Container(
                  padding:
                      EdgeInsets.all(ScreenUtils.screenWidth(context) * 0.02),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Heading_Text(
                        text: "Product Description",
                      ),
                      vGap(size: 4),
                      const Text("Details",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      const Text(
                          "lorem is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)."),
                      vGap(size: 4),
                      Heading_Text(
                        text: "Disclaimer",
                      ),
                      vGap(size: 4),
                      const Text(
                        "Disclaimer",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 13),
                      ),
                      const Text(
                          "lorem is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)."),
                      vGap(size: 4),
                    ],
                  ),
                ),
                vGap(size: 4),
                Container(
                  padding:
                      EdgeInsets.all(ScreenUtils.screenWidth(context) * 0.02),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Related products",
                        style: TextStyle(fontSize: 19),
                      ),
                      vGap(size: 4),
                      GridView.custom(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        gridDelegate: SliverStairedGridDelegate(
                          crossAxisSpacing: 5,
                          tileBottomSpace: 15,
                          mainAxisSpacing: 5,
                          pattern: [
                            StairedGridTile(0.5, 1),
                            StairedGridTile(0.5, 1),
                          ],
                        ),
                        childrenDelegate: SliverChildBuilderDelegate(
                          childCount: 6,
                          (context, index) {
                            if (index >= 10) {
                              return null;
                            } else {
                              return RelateProduct();
                            }
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 100,
                      ),
                    ],
                  ),
                ),
              ]),
        ),
      ),
    ));
  }
}
