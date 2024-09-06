import 'package:flutter/material.dart';

Widget newsCard(String imageUrl) {
  return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          // Add your tap functionality here
          print("News button pressed!");
        },
        child: Container(
          width: 150,
          height: 120,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              image: AssetImage(imageUrl), // Use the passed URL
              fit: BoxFit.cover,
            ),
          ),
        ),
      ));
}
