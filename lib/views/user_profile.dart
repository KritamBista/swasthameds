import 'package:flutter/material.dart';
import 'package:swasthameds/utils/color.dart';
import 'package:swasthameds/utils/screen.dart';
import 'package:swasthameds/utils/vGap.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appColor.white,
        title: const Text("My profile"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: const Text(
              "EDIT",
              style: TextStyle(color: Color(0xFF3673B3)),
            ),
          )
        ],
        centerTitle: true,
      ),
      body: Container(
        color: appColor.bgColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  CircleAvatar(
                    minRadius: 40,
                    backgroundColor: appColor.grey,
                    child: CircleAvatar(
                        minRadius: 30,
                        child: Icon(
                          Icons.person_2_outlined,
                          size: 40,
                        ),
                        backgroundColor: appColor.grey),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Full Name"),
                    vGap(size: 7),
                    FormField(),
                    vGap(size: 7),
                    Text("Phone Number"),
                    vGap(size: 7),
                    FormField(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FormField extends StatelessWidget {
  const FormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(12),
        border: OutlineInputBorder(),
        fillColor: Colors.white,
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: Color(0xFFD9D8D9)), // Border when not focused
        ),
        // Set the initial background color
        focusedBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: Colors.blue), // Border color when focused
        ),
      ),
    );
  }
}
