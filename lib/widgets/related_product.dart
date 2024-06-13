import 'package:flutter/material.dart';
import 'package:swasthameds/utils/screen.dart';

class RelateProduct extends StatelessWidget {
  const RelateProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                  height: 130,
                  child: Image.asset(
                    "assets/images/2.png",
                    fit: BoxFit.cover,
                  )),
            ),
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("sanson marcha anti strech mark cream "),
                // const SizedBox(
                //   height: 5,
                // ),
                const Text(
                  "Rs.1600.00",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      "ADD TO CART",
                      style: const TextStyle(color: Colors.white, fontSize: 12),
                    ),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size.fromHeight(ScreenUtils.screenHeight(context)*0.3),
                        backgroundColor: const Color(0xFF13ADE1),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                )
              ],
            )),
          ],
        ),
      ),
    );
  }
}
