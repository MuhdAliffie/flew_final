import 'package:flew_final/headers/community/community_button.dart';
import 'package:flew_final/headers/drawer/drawer_menu.dart';
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
            'Communities',
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
