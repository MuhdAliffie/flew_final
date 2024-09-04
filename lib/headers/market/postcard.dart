import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final String imagePath;
  final String text;
  final int likes;
  final int replies;
  final int reposts;

  const PostCard({
    super.key,
    this.imagePath = '',
    required this.text,
    required this.likes,
    required this.replies,
    required this.reposts,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (imagePath.isNotEmpty)
              Image.asset(
                imagePath,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            const SizedBox(height: 8),
            Text(
              text,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('$likes Likes'),
                Text('$replies Reply'),
                Text('$reposts Repost'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
