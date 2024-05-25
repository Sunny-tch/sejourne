import 'package:flutter/material.dart';
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
          ],
        ),
      ),
    );
  }
}
