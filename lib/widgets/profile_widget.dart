
import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
 

  ProfileWidget({
    super.key,
    required this.tittle,
    required this.leadingIcon,
  });
     String tittle;
    IconData leadingIcon ;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading:  Icon(leadingIcon),
      title:Text("$tittle") ,
      trailing: const Icon(
        Icons.arrow_forward_ios,
        size: 15,
      ),
      onTap: () {},
    );
  }
}
