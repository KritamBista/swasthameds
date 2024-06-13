import 'package:flutter/material.dart';
import 'package:swasthameds/utils/vGap.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 6,
      itemBuilder: (context,index){
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.centerLeft,
            child: Text("Pharmacy",style: TextStyle(fontSize: 16,color: Colors.black),)),
          vGap(size: 10),
          Divider(),
        ],
      );
    });
  }
}