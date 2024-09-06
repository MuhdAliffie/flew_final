import 'package:flew_final/headers/drawer/drawer_menu.dart';
import 'package:flew_final/headers/model/appbar_model.dart';
import 'package:flew_final/pages/community.dart';
import 'package:flew_final/pages/contact.dart';
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
      appBar: const AppbarModel(
        title: 'Feed',
      ),
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
                            builder: (context) => const SelectContact()));
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
