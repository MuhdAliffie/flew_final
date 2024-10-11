import 'package:flutter/material.dart';

class AppbarModel extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const AppbarModel({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.blue[900]!,
              const Color.fromARGB(255, 51, 156, 243),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
          fontFamily: 'Lexend Deca',
          color: Colors.white,
        ),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {
            // Add search functionality here
          },
        ),
        IconButton(
          icon: const Icon(Icons.settings),
          onPressed: () {
            // Add settings functionality here
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(55);
}
