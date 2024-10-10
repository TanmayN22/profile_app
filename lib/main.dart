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
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverAppBar(
                expandedHeight: 570, // Adjust as needed
                flexibleSpace: FlexibleSpaceBar(
                  background: Column(
                    children: [
                      buildTop(),
                      const SizedBox(height: 100),
                      buildContent(),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
                pinned: true,
                bottom: const TabBar(
                  tabs: [
                    Tab(
                      icon: Icon(Icons.grid_view_rounded),
                    ),
                    Tab(
                      icon: Icon(Icons.info_outline_rounded),
                    ),
                  ],
                ),
              ),
            ];
          },
          body:
              buildTabBarView(), // The Tab content will scroll together with the rest
        ),
      ),
    );
  }
}