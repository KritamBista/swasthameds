import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselWidget extends StatelessWidget {
  const CarouselWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List imgList = [
      {
        "id": 1,
        "path": "assets/images/banner.jpg",
      },
      {
        "id": 2,
        "path": "assets/images/banner2.jpg",
      }
    ];
    return CarouselSlider(
      options: CarouselOptions(
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
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(60)),
                child: Image.asset(
                  i['path'],
                  fit: BoxFit.cover,
                ));
          },
        );
      }).toList(),
    );
  }
}
