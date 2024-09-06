import 'package:flew_final/headers/community/community_button.dart';
import 'package:flew_final/headers/drawer/drawer_menu.dart';
import 'package:flew_final/headers/model/appbar_model.dart';
import 'package:flutter/material.dart';

class CommunityPage extends StatelessWidget {
  const CommunityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CommunityPageState(),
    );
  }
}

class CommunityPageState extends StatelessWidget {
  const CommunityPageState({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppbarModel(
        title: 'Community',
      ),
      drawer: const Drawer(
        child: CustomDrawer(),
      ),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Be apart of a community today',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
          ),
          CommunityButton(
            imagePath: 'assets/images/vr_drone.jpeg',
            title: 'VR',
            posts: '120 Posts',
            onTap: () {
              // Navigate to VR community page
            },
          ),
          CommunityButton(
            imagePath: 'assets/images/emergency_drone.jpeg',
            title: 'Emergency response',
            posts: '233 Posts',
            onTap: () {
              // Navigate to Emergency response community page
            },
          ),
          CommunityButton(
            imagePath: 'assets/images/delivery_drone.jpeg',
            title: 'Automated delivery',
            posts: '89 Posts',
            onTap: () {
              // Navigate to Automated delivery community page
            },
          ),
          CommunityButton(
            imagePath: 'assets/images/photography_drone.jpeg',
            title: 'Photography',
            posts: '235 Posts',
            onTap: () {
              // Navigate to Photography community page
            },
          ),
          CommunityButton(
            imagePath: 'assets/images/signal_drone.jpeg',
            title: 'Drone signal',
            posts: '479 Posts',
            onTap: () {
              // Navigate to Drone signal community page
            },
          ),
        ],
      ),
    );
  }
}
