import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:twitter_clone/constants/constants.dart';

import '../controllers/theme_controller.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({super.key});

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      animationDuration: const Duration(milliseconds: 3),
      length: 2,
      child: Scaffold(
        body: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child:  TabBar(
                physics: const BouncingScrollPhysics(),
                indicatorColor: Colors.blue,

                tabs: [
                  Tab(
                    child: Obx(() {
                      return Text(
                        'For you',
                        style: TextStyle(color: themeController.currentTheme.value == ThemeMode.dark
                        ? CustomTheme.darkThemeColor
                            : CustomTheme.lightThemeColor,

                        ),
                      );
                    }),
                  ),
                  Tab(
                    child: Obx(() {
                      return Text(
                          'Following',
                        style: TextStyle(color: themeController.currentTheme.value == ThemeMode.dark
                            ? CustomTheme.darkThemeColor
                            : CustomTheme.lightThemeColor,

                        ),


                      );
                    }),
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
