import 'package:flew_final/headers/drawer/drawer_menu.dart';
import 'package:flew_final/headers/model/appbar_model.dart';
import 'package:flew_final/headers/news/event_card.dart';
import 'package:flew_final/headers/news/news_card.dart';
import 'package:flutter/material.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: NewsPageState(),
    );
  }
}

class NewsPageState extends StatelessWidget {
  const NewsPageState({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppbarModel(
        title: 'News',
      ),
      drawer: const Drawer(
        child: CustomDrawer(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Banner section
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: GestureDetector(
                onTap: () {
                  // Add your tap functionality here
                  print("Banner button pressed!");
                },
                child: Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                      image: AssetImage(
                          'assets/images/event_banner.png'), // Replace with your image link
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),

            // Search bar
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Search here',
                  prefixIcon: Icon(Icons.search),
                ),
              ),
            ),

            // Events Section
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Events",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  TextButton(onPressed: () {}, child: const Text("More")),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  eventCard('assets/images/event1.jpeg'),
                  eventCard('assets/images/event2.jpg'),
                  eventCard('assets/images/event3.jpeg'),
                ],
              ),
            ),
            // News Section
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "News",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  TextButton(onPressed: () {}, child: const Text("More")),
                ],
              ),
            ),

            // News Filters
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    filterButton("Trending"),
                    filterButton("New"),
                    filterButton("Popular"),
                    filterButton("Premieres"),
                  ],
                ),
              ),
            ),

            // News Cards
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    newsCard('assets/images/news1.jpeg'),
                    newsCard('assets/images/news2.jpeg'),
                    newsCard('assets/images/news3.jpeg'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Function to create event card

  // Function to create filter button
  Widget filterButton(String text) {
    return Padding(
        padding: const EdgeInsets.all(1.0),
        child: OutlinedButton(
          onPressed: () {},
          child: Text(text),
        ));
  }
}
