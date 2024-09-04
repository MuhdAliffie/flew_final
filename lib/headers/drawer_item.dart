import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const DrawerItem({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding:
          const EdgeInsets.symmetric(horizontal: 16.0, vertical: 0.0),
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: onTap,
    );
  }
}
