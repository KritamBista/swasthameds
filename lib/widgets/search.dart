import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
                      decoration: InputDecoration(
    filled: true,
    fillColor: Colors.grey.shade200,
    hintText: 'Search here...',
    hintStyle: const TextStyle(color: Colors.grey),
    border: InputBorder.none,
    prefixIcon: const Icon(Icons.search, color: Colors.grey),
                      ),
                      style: const TextStyle(color: Colors.white),
                    );
  }
}