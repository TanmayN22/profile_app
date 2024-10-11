import 'package:flutter/material.dart';
import 'Widgets/widgets.dart';
import 'Widgets/tabbar.dart';

void main() {
  runApp(const ProfileApp());
}

class ProfileApp extends StatelessWidget {
  const ProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: ListView(
          children: [
            buildTop(),
            const SizedBox(height: 80),
            buildContent(),
            const SizedBox(height: 20),
            const TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.grid_view_rounded),
                ),
                Tab(
                  icon: Icon(Icons.info_outline_rounded),
                ),
              ],
            ),
            SizedBox(height: 450, child: buildTabBarView()),
          ],
        ),
      ),
    );
  }
}
