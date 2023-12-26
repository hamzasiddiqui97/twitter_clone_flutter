import 'package:flutter/material.dart';
import 'package:twitter_clone/controllers/bottom_nav_controller.dart';
import 'package:twitter_clone/screens/communities_page.dart';
import 'package:twitter_clone/screens/home_page.dart';
import 'package:twitter_clone/screens/messages_page.dart';
import 'package:twitter_clone/screens/notifications_page.dart';
import 'package:twitter_clone/screens/search_page.dart';
import 'package:get/get.dart';
import 'package:twitter_clone/widgets/custom_drawer.dart';

class NavigationBottomApp extends StatelessWidget {
  NavigationBottomApp({super.key});

  final BottomNavIndexController bottomNavIndexController =
      Get.put(BottomNavIndexController(), permanent: false);

  final TextStyle unselectedLabelStyle = TextStyle(
      color: Colors.white.withOpacity(0.5),
      fontWeight: FontWeight.w500,
      fontSize: 12);

  final TextStyle selectedLabelStyle = const TextStyle(
      color: Colors.white, fontWeight: FontWeight.w500, fontSize: 12);

  buildBottomNavigationMenu(context, bottomNavIndexController) {
    return Obx(() => MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaleFactor: 2.0),
        child: SizedBox(
          height: 54,
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            showUnselectedLabels: false,
            showSelectedLabels: false,
            onTap: bottomNavIndexController.updatePageIndex,
            currentIndex: bottomNavIndexController.currentIndex.value,
            backgroundColor: Colors.black,
            unselectedItemColor: Colors.white.withOpacity(0.5),
            selectedItemColor: Colors.white,
            unselectedLabelStyle: unselectedLabelStyle,
            selectedLabelStyle: selectedLabelStyle,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_filled,
                  size: 20.0,
                ),
                label: 'Home',
                backgroundColor: Colors.black,
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  size: 20.0,
                ),
                label: 'Search',
                backgroundColor: Colors.black,
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.people,
                  size: 20.0,
                ),
                label: 'communities',
                backgroundColor: Colors.black,
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.notifications_none_sharp,
                  size: 20.0,
                ),
                label: 'notifications',
                backgroundColor: Colors.black,
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.mail_outline,
                  size: 20.0,
                ),
                label: 'messages',
                backgroundColor: Colors.black,
              ),
            ],
          ),
        )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => IndexedStack(
            index: bottomNavIndexController.currentIndex.value,
            children: const [
              MyHomePage(),
              SearchPage(),
              NotificationsPage(),
              CommunitiesPage(),
              MessagesPage(),
            ],
          )),
      bottomNavigationBar:
          buildBottomNavigationMenu(context, bottomNavIndexController),
    );
  }
}
