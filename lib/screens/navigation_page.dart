import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:twitter_clone/controllers/bottom_nav_controller.dart';
import 'package:twitter_clone/controllers/theme_controller.dart';
import 'package:twitter_clone/screens/communities_page.dart';
import 'package:twitter_clone/screens/home_page.dart';
import 'package:twitter_clone/screens/messages_page.dart';
import 'package:twitter_clone/screens/notifications_page.dart';
import 'package:twitter_clone/screens/search_page.dart';
import 'package:twitter_clone/screens/settings_page.dart';
import 'package:twitter_clone/widgets/custom_drawer.dart';
import 'package:get/get.dart';

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
        data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
        child: SizedBox(
          height: 54,
          child: BottomNavigationBar(
            showUnselectedLabels: true,
            showSelectedLabels: true,
            onTap: bottomNavIndexController.updatePageIndex,
            currentIndex: bottomNavIndexController.currentIndex.value,
            backgroundColor: const Color.fromRGBO(36, 54, 101, 1.0),
            unselectedItemColor: Colors.white.withOpacity(0.5),
            selectedItemColor: Colors.white,
            unselectedLabelStyle: unselectedLabelStyle,
            selectedLabelStyle: selectedLabelStyle,
            items: [
              BottomNavigationBarItem(
                icon: Container(
                  margin: const EdgeInsets.only(bottom: 7),
                  child: const Icon(
                    Icons.home,
                    size: 20.0,
                  ),
                ),
                label: 'Home',
                backgroundColor: const Color.fromRGBO(36, 54, 101, 1.0),
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: const EdgeInsets.only(bottom: 7),
                  child: const Icon(
                    Icons.search,
                    size: 20.0,
                  ),
                ),
                label: 'Explore',
                backgroundColor: const Color.fromRGBO(36, 54, 101, 1.0),
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: const EdgeInsets.only(bottom: 7),
                  child: const Icon(
                    Icons.location_history,
                    size: 20.0,
                  ),
                ),
                label: 'Places',
                backgroundColor: const Color.fromRGBO(36, 54, 101, 1.0),
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: const EdgeInsets.only(bottom: 7),
                  child: const Icon(
                    Icons.settings,
                    size: 20.0,
                  ),
                ),
                label: 'Settings',
                backgroundColor: const Color.fromRGBO(36, 54, 101, 1.0),
              ),
            ],
          ),
        )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: bottomNavIndexController.currentIndex.value,
        children: const [
          MyHomePage(),
          SearchPage(),
          NotificationsPage(),
          CommunitiesPage(),
          MessagesPage(),
        ],
      ),
      bottomNavigationBar:
          buildBottomNavigationMenu(context, bottomNavIndexController),
    );
  }
}
