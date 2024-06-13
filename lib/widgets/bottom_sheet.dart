import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swasthameds/utils/screen.dart';
import 'package:swasthameds/utils/vGap.dart';
import 'package:swasthameds/widgets/button.dart';
import 'package:swasthameds/widgets/rich_text.dart';

class ProductBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                height: 5,
                width: 100,
                color: Colors.grey,
              ),
            ),
            vGap(size: 8),
            vGap(size: 8),
            const Text(
              'Sanosan Mama Anti Stretch Mark Cream 200 ml',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            vGap(size: 10),
            PriceText(),
            Row(
              children: [
                const Text('Quantity :',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
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
                        icon: Icon(Icons.add),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
          Button(
          buttonwidth: ScreenUtils.screenWidth(context),
          buttonheight: ScreenUtils.screenHeight(context) * 0.048,
          onPressed: () {},
        ),
          ],
        ),
      ),
    );
  }
}
