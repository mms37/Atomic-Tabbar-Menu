import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: GNav (gap: 8,
          backgroundColor: Colors.black,
          color: Colors.white,
        activeColor: Colors.white,
        tabBackgroundColor: Colors.grey,tabs: [
        GButton(icon:Icons.home,text: 'Home',),
        GButton(icon:Icons.favorite,text: 'Likes',),
        GButton(icon:Icons.search,text: 'Search',),
        GButton(icon:Icons.settings,text: 'Settings'),

      ]),
    );
  }
}
