import 'package:flew_final/headers/drawer/drawer_menu.dart';
import 'package:flew_final/headers/model/appbar_model.dart';
import 'package:flutter/material.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const FeedPageState(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

class FeedPageState extends StatelessWidget {
  const FeedPageState({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppbarModel(
        title: 'Feed',
      ),
      drawer: const Drawer(
          // You can add menu items here
          child: CustomDrawer()),
      body: ListView(
        children: [
          // Example of the horizontal list of user stories at the top
          SizedBox(
            height: 115,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                StoryCard(
                    'Claudia A', 'Just Now', 'assets/images/sungjinwoo.jpg'),
                StoryCard('Olivia W', '2 min', 'assets/images/naruto.jpeg'),
                StoryCard('Avery D', '5 min', 'assets/images/kirito.jpeg'),
                StoryCard('Alfred T', '6 min', 'assets/images/gojo.jpeg'),
              ],
            ),
          ),
          const Divider(),
          // Individual posts
          const PostCard(
            username: "Claudia Alves",
            time: "Just Now",
            location: "123 Anywhere St., Any City",
            content:
                "I'm facing tough times, struggling for my family's sake. Every challenge is a step closer to securing a better future for them.",
            likes: 50,
            replies: 20,
            reposts: 9,
          ),
          const PostCard(
            username: "Olivia Wilson",
            time: "5 hours ago",
            location: "123 Anywhere St., Any City",
            content:
                "Traveling the world, collecting memories, and indulging in the beauty of diverse cultures – life's a journey, and I'm here to savor every breathtaking moment.",
            likes: 70,
            replies: 30,
            reposts: 2,
          ),
          const PostCard(
            username: "Alfredo Torres",
            time: "Yesterday",
            location: "123 Anywhere St., Any City",
            content: "Had an amazing day exploring the city!",
            likes: 40,
            replies: 12,
            reposts: 5,
          ),
        ],
      ),
    );
  }
}

// Widget for the user stories at the top of the screen
class StoryCard extends StatelessWidget {
  final String username;
  final String time;
  final String imagePath;

  const StoryCard(this.username, this.time, this.imagePath, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      margin: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 30.0,
            backgroundImage: AssetImage(imagePath), // Dummy image
          ),
          const SizedBox(height: 4),
          Text(username,
              style: const TextStyle(fontSize: 12),
              overflow: TextOverflow.ellipsis),
          Text(time, style: const TextStyle(fontSize: 10, color: Colors.grey)),
        ],
      ),
    );
  }
}

// Widget for individual posts
class PostCard extends StatelessWidget {
  final String username;
  final String time;
  final String location;
  final String content;
  final int likes;
  final int replies;
  final int reposts;

  const PostCard({
    super.key,
    required this.username,
    required this.time,
    required this.location,
    required this.content,
    required this.likes,
    required this.replies,
    required this.reposts,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  radius: 24.0,
                  backgroundImage:
                      AssetImage('assets/images/hakeem.jpeg'), // Dummy image
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(username,
                        style: const TextStyle(fontWeight: FontWeight.bold)),
                    Text("$time · $location",
                        style:
                            const TextStyle(color: Colors.grey, fontSize: 12)),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(content),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InteractionButton(icon: Icons.thumb_up, count: likes),
                InteractionButton(icon: Icons.reply, count: replies),
                InteractionButton(icon: Icons.repeat, count: reposts),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// Reusable widget for like, reply, and repost buttons
class InteractionButton extends StatelessWidget {
  final IconData icon;
  final int count;

  const InteractionButton({super.key, required this.icon, required this.count});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 20, color: Colors.grey),
        const SizedBox(width: 4),
        Text(count.toString(), style: const TextStyle(color: Colors.grey)),
      ],
    );
  }
}
