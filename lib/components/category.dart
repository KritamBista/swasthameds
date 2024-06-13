import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: ((context, index) {
          return Column(
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFFE8E8E8)),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Image.asset(
                    "assets/images/care.png",
                    width: 50,
                    height: 50,
                  ),
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                "Baby Care",
                style: TextStyle(fontWeight: FontWeight.w300, fontSize: 13),
              ),
            ],
          );
        }),
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            width: 10,
          );
        },
      ),
    );
  }
}
