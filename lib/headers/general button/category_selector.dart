import 'package:flew_final/pages/profile.dart';
import 'package:flutter/material.dart';

class CategorySelector extends StatefulWidget {
  const CategorySelector({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CategorySelectorState createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  final List<String> categories = ['Posts', 'Market', 'Communities', 'About'];
  String selectedCategory = 'Posts';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: categories.map((category) {
              return CategoryButton(
                title: category,
              );
            }).toList(),
          ),
        ),
        Expanded(
          child: Center(
            child: Text(
              'Selected Category: $selectedCategory',
              style: const TextStyle(fontSize: 24),
            ),
          ),
        ),
      ],
    );
  }
}
