import 'package:flew_final/headers/profile/category_button.dart';
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
                isSelected: selectedCategory == category,
                onTap: () {
                  setState(() {
                    selectedCategory = category;
                  });
                },
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
