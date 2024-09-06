import 'package:flew_final/headers/drawer/drawer_item.dart';
import 'package:flew_final/pages/chat.dart';
import 'package:flew_final/pages/community.dart';
import 'package:flew_final/pages/feed.dart';
import 'package:flew_final/pages/market.dart';
import 'package:flew_final/pages/news.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue.shade900, Colors.blue],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Container(
                color: Colors.transparent,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      const CircleAvatar(
                        radius: 40.0, // Adjust the size as needed
                        backgroundImage: AssetImage(
                            'assets/images/profile_picture.jpeg'), // Add your image asset here
                      ),
                      const SizedBox(
                          width: 16.0), // Add spacing between image and text
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextButton(
                            onPressed: () {
                              // Add onPressed logic here
                            },
                            child: const Text(
                              'Aliffie',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Transform.translate(
                            offset: const Offset(0, -20),
                            child: TextButton(
                              onPressed: () {
                                Navigator.of(context).pushAndRemoveUntil(
                                  MaterialPageRoute(
                                      builder: (context) => const FeedPage()),
                                  (Route<dynamic> route) =>
                                      false, // Remove all routes until this point
                                );
                              },
                              child: const Text(
                                'Menu',
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 16.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            DrawerItem(
                title: 'Feed',
                onTap: () {
                  Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) => const FeedPage()),
                    (Route<dynamic> route) =>
                        false, // Remove all routes until this point
                  );
                }),
            DrawerItem(
                title: 'Chats',
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ChatPage()));
                }),
            DrawerItem(
                title: 'News',
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const NewsPage()));
                }),
            DrawerItem(
                title: 'Market',
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MarketPage()));
                }),
            DrawerItem(
                title: 'Communities',
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CommunityPage()));
                }),
            DrawerItem(title: 'Drone services', onTap: () {}),
          ],
        ),
      ),
    );
  }
}
