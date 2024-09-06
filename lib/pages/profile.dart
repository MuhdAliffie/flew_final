import 'package:flew_final/headers/drawer/drawer_menu.dart';
import 'package:flew_final/headers/market/postcard.dart';
import 'package:flew_final/headers/model/appbar_model.dart';
import 'package:flew_final/headers/profile/stat_counter.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  ProfilePageState createState() => ProfilePageState();
}

class ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const AppbarModel(
          title: 'Profile',
        ),
        drawer: const Drawer(
          child: CustomDrawer(),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  height: 300,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Color(0xff7c94b6),
                    image: DecorationImage(
                      image: AssetImage('assets/images/drone_background.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Transform.translate(
                        offset: const Offset(10, -5),
                        child: const Text(
                          'Aliffie',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Transform.translate(
                        offset: const Offset(20, -5),
                        child: const Text(
                          'Founder of Flew\nDrone enthusiast\nProgrammer',
                          textAlign: TextAlign.left,
                        ),
                      )
                    ],
                  ),
                  Transform.translate(
                    offset: const Offset(40, -20),
                    child: const CircleAvatar(
                      radius: 30,
                      backgroundImage:
                          AssetImage('assets/images/drone_badge.png'),
                    ),
                  ),
                  const Spacer(),
                  Transform.translate(
                    offset: const Offset(-15, -50),
                    child: Container(
                      margin: const EdgeInsets.all(1),
                      child: const CircleAvatar(
                        radius: 70,
                        backgroundImage:
                            AssetImage('assets/images/profile_picture.jpeg'),
                      ),
                    ),
                  ),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  StatCounter(title: 'Posts', count: '154'),
                  StatCounter(title: 'Following', count: '400'),
                  StatCounter(title: 'Followers', count: '15.4K'),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                color: Colors.grey[300],
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CategoryButton(title: 'Posts'),
                      CategoryButton(title: 'Market'),
                      CategoryButton(title: 'Communities'),
                      CategoryButton(title: 'About'),
                    ],
                  ),
                ),
              ),
              const PostCard(
                imagePath:
                    'assets/images/dronefly_post.jpeg', // Replace with your image
                text:
                    'Another day, another drone flying with my fellow flewlers!',
                likes: 50,
                replies: 20,
                reposts: 9,
              ),
              const PostCard(
                text: 'Good morning guys! Anyone up for some drone racing?',
                likes: 30,
                replies: 10,
                reposts: 5,
              ),
            ],
          ),
        ));
  }
}

class CategoryButton extends StatelessWidget {
  final String title;

  const CategoryButton({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 16,
          color: Colors.blue,
        ),
      ),
    );
  }
}
