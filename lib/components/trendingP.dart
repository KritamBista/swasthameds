import 'package:flutter/material.dart';
import 'package:swasthameds/utils/screen.dart';
import 'package:swasthameds/widgets/product_card.dart';

class TrendingProduct extends StatelessWidget {
  const TrendingProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
