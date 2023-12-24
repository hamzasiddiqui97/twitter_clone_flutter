import 'package:flutter/material.dart';
import 'package:twitter_clone/screens/communities_page.dart';
import 'package:twitter_clone/screens/home_page.dart';
import 'package:twitter_clone/screens/messages_page.dart';
import 'package:twitter_clone/screens/notifications_page.dart';
import 'package:twitter_clone/screens/search_page.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key});

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {

  int pageIndex = 0;


  final pages =  [
    MyHomePage(),
    const SearchPage(),
    const CommunitiesPage(),
    const NotificationsPage(),
    const MessagesPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageIndex],
      bottomNavigationBar: Container(
        height: 60,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(3)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(onPressed: (){}, icon: const Icon(Icons.home_filled,semanticLabel: 'home',)),
            IconButton(onPressed: (){}, icon: const Icon(Icons.search,semanticLabel: 'search'),),
            IconButton(onPressed: (){}, icon: const Icon(Icons.people,semanticLabel: 'communities'),),

          ],
        ),
      ),
    );
  }
}
