import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sejourne/features/home/ui/home_tab.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        body: TabBarView(
          children: [
            HomeTab(),
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.green,
            ),
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.purple,
            ),
            Container(
              color: Colors.yellow,
            ),
          ],
        ),
        bottomNavigationBar: TabBar(
          tabs: [
            Tab(
              icon: Icon(Icons.home),
              text: 'Home',
            ),
            Tab(
              icon: Icon(Icons.favorite_border),
              text: 'Wishlist',
            ),
            Tab(
              icon: Icon(FontAwesomeIcons.calendar),
              text: 'Bookings',
            ),
            Tab(
              icon: Icon(FontAwesomeIcons.message),
              text: 'Messages',
            ),
            Tab(
              icon: Icon(Icons.person),
              text: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
