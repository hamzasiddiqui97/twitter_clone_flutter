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
import 'package:twitter_clone/widgets/custom_bottom_nav_bar.dart';
import 'package:twitter_clone/widgets/custom_drawer.dart';
import 'package:get/get.dart';

class NavigationBottomApp extends StatefulWidget {
  const NavigationBottomApp({super.key});

  @override
  State<NavigationBottomApp> createState() => _NavigationBottomAppState();
}

class _NavigationBottomAppState extends State<NavigationBottomApp> {
  int pageIndex = 0;

  final pages = [
    const MyHomePage(),
    const SearchPage(),
    const NotificationsPage(),
    const CommunitiesPage(),
    const MessagesPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(
          () => Text(
              themeController.currentTheme.value == ThemeMode.dark ? "X" : "X"),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Get.to(() => const SettingsPage());
            },
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      drawer: const CustomAppDrawer(),
      body: pages[pageIndex],
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }
}
