import 'package:flutter/material.dart';
import 'package:twitter_clone/controllers/theme_controller.dart';
import 'package:twitter_clone/screens/communities_page.dart';
import 'package:twitter_clone/screens/messages_page.dart';
import 'package:twitter_clone/screens/notifications_page.dart';
import 'package:twitter_clone/screens/search_page.dart';
import 'package:twitter_clone/screens/settings_page.dart';
import 'package:twitter_clone/widgets/custom_bottom_nav_bar.dart';
import 'package:twitter_clone/widgets/custom_drawer.dart';
import 'package:get/get.dart';
import 'package:twitter_clone/widgets/custom_tab_bar.dart';

class MyHomePage extends StatelessWidget {

  MyHomePage({super.key});


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Obx(
              () => Text(themeController.currentTheme.value == ThemeMode.dark
              ? "X"
              : "X"),
        ),


        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){
            Get.to(()=> const SettingsPage());
          }, icon: const Icon(Icons.settings),),
        ],
      ),
      drawer: const CustomAppDrawer(),
      body: const CustomTabBar(),
      bottomNavigationBar: const CustomBottomNavBar() ,
    );
  }
}