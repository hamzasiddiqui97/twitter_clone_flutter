import 'package:flutter/material.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({super.key});

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: TabBar(
                tabs: [
                  Tab(
                    child: Text('For you'),
                  ),
                  Tab(
                    child: Text('Following'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
