import 'package:flew_final/headers/drawer/drawer_menu.dart';
import 'package:flew_final/headers/model/appbar_model.dart';
import 'package:flutter/material.dart';

class ServicePage extends StatelessWidget {
  const ServicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const ServicePageState(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

class ServicePageState extends StatelessWidget {
  const ServicePageState({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppbarModel(title: 'Drone Services'),
      drawer: const Drawer(
        child: CustomDrawer(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Our Services',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                children: [
                  ServiceTile(
                    icon: Icons.article,
                    label: 'Drone rules and regulations',
                    onTap: () => print('Drone rules and regulations'),
                  ),
                  ServiceTile(
                    icon: Icons.map,
                    label: 'Drone fly zone',
                    onTap: () => print('Drone fly zone'),
                  ),
                  const ServiceTile(
                    icon: Icons.assignment,
                    label: 'Apply a permit',
                  ),
                  const ServiceTile(
                    icon: Icons.build,
                    label: 'Nearest repair services',
                  ),
                  const ServiceTile(
                    icon: Icons.cloud,
                    label: 'Weather forecast',
                  ),
                  const ServiceTile(
                    icon: Icons.report_problem,
                    label: 'Report an issue',
                  ),
                  const ServiceTile(
                    icon: Icons.headset_mic,
                    label: 'Contact us',
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

class ServiceTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback? onTap; // onTap can be nullable

  const ServiceTile({
    super.key,
    required this.icon,
    required this.label,
    this.onTap, // Accept onTap as an optional parameter
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors
          .transparent, // Make sure background is transparent to see the ripple
      child: InkWell(
        onTap: onTap, // Callback when tapped
        borderRadius: BorderRadius.circular(
            12), // Ensure ripple effect respects rounded corners
        splashColor:
            Colors.blue.withOpacity(0.3), // Optional: customize ripple color
        child: Container(
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: Colors.blue,
                size: 50,
              ),
              const SizedBox(height: 10),
              Text(
                label,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
