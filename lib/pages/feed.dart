import 'package:flew_final/headers/drawer/drawer_menu.dart';
import 'package:flew_final/pages/chat.dart';
import 'package:flew_final/pages/community.dart';
import 'package:flew_final/pages/market.dart';
import 'package:flew_final/pages/profile.dart';
import 'package:flutter/material.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({super.key});

  @override
  FeedPageState createState() => FeedPageState();
}

class FeedPageState extends State<FeedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor:
              Colors.transparent, // Make the AppBar background transparent
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.blue[900]!,
                  const Color.fromARGB(255, 51, 156, 243)
                ], // Dark blue to light blue
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          title: const Text(
            'Feed',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              fontFamily: 'Lexend Deca',
              color: Colors.white, // This color will be masked by the gradient
            ),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {},
            ),
          ]),
      drawer: const Drawer(
        child: CustomDrawer(),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Row(
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ChatPage()));
                  },
                  child: const Text('Chat'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MarketPage()));
                  },
                  child: const Text('Market'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ProfilePage()));
                  },
                  child: const Text('Profile'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CommunityPage()));
                  },
                  child: const Text('Community'),
                ),
              ],
            ),
            SizedBox(
              height: 300,
              width: 400,
              child: ListView(
                children: const <Widget>[
                  ListTile(
                    title: Text('Item 1'),
                    subtitle: Text('Description 1'),
                  ),
                  ListTile(
                    title: Text('Item 2'),
                    subtitle: Text('Description 2'),
                  ),
                  ListTile(
                    title: Text('Item 3'),
                    subtitle: Text('Description 3'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Generated code for this Column Widget...
