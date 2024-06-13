import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swasthameds/utils/routes.dart';
import 'package:swasthameds/views/product_details.dart';
import 'package:swasthameds/widgets/product_card.dart';

class ProductComponent extends StatelessWidget {
  const ProductComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return InkWell(
      onTap: () {
        Get.toNamed(AppRoute.productDetailView);
      },
      child: Container(
        height: 280,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: 6,
          itemBuilder: (context, index) {
            return  ProductCard();
          },
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(
              width: 10,
            );
          },
        ),
      ),
    );
  }
}
