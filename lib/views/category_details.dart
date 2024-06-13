import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swasthameds/controller/sort.dart';

import 'package:swasthameds/utils/screen.dart';
import 'package:swasthameds/widgets/related_product.dart';

class CategoryDetailView extends StatelessWidget {
  CategoryDetailView({super.key});
  final List<String> categories = [
    'Acne',
    'Alkalizer',
    'Allergies',
    'Amino Acid',
    'Analgesic',
    'Antacid'
  ];

  @override
  Widget build(BuildContext context) {
    var sortContrroller = Get.find<SortContrroller>();
    return Scaffold(
        backgroundColor: const Color(0xFFF5FDFF),
        body: CustomScrollView(slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.white,
            title: const Text("Pharmacy"),
            elevation: 0,
            scrolledUnderElevation: 0,
            expandedHeight: 150.0,
            floating: true,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
                background: Stack(
              children: [
                Padding(
                  padding:
                      EdgeInsets.all(ScreenUtils.screenWidth(context) * 0.015),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: SizedBox(
                      height: 80.0,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemCount: categories.length,
                        itemBuilder: (context, index) {
                          return SizedBox(
                            width: 70,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/images/icn.png",
                                  width: 45,
                                  height: 45,
                                  color: const Color(0xFFEBEBEB),
                                ),
                                Expanded(
                                  child: Text(
                                    categories[index],
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return const SizedBox(
                            width: 8,
                          );
                        },
                      ),
                    ),
                  ),
                )
              ],
            )),
          ),
          SliverPersistentHeader(
            pinned: true,
            delegate: _SliverAppBarDelegate(
              minHeight: 50.0,
              maxHeight: 50.0,
              child: Container(
                color: Colors.white,
                padding:
                    EdgeInsets.all(ScreenUtils.screenWidth(context) * 0.015),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Obx(() {
                      return DropdownButtonHideUnderline(
                        child: DropdownButton(
                            elevation: 0,
                            value: sortContrroller.selectedSortoptions.value,
                            // hint: const Text("sort by :"),
                            items: sortContrroller.sortOptions.map((e) {
                              return DropdownMenuItem(child: Text("sort by: $e"), value: e);
                            }).toList(),
                            onChanged: (val) {
                              sortContrroller.setItems(val!);
                            }),
                      );
                    }),
                    Row(
                      children: [
                        Icon(Icons.filter_alt_sharp),
                        Text("Filter"),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
            delegate: SliverChildBuilderDelegate(
                (context, index) => const RelateProduct(),
                childCount: 20),
          )
        ]));
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate({
    required this.minHeight,
    required this.maxHeight,
    required this.child,
  });

  final double minHeight;
  final double maxHeight;
  final Widget child;

  @override
  double get minExtent => minHeight;

  @override
  double get maxExtent => maxHeight;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new SizedBox.expand(child: child);
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}
