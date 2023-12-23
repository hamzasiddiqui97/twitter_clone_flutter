import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:twitter_clone/constants/constants.dart';
import 'package:twitter_clone/controllers/theme_controller.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    // final ThemeController _themeController = Get.put(ThemeController());

    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: Get.isDarkMode
            ? SystemUiOverlayStyle.light
            : SystemUiOverlayStyle.dark,
        title: Obx(
              () => Text(themeController .currentTheme.value == ThemeMode.dark
              ? "Settings"
              : "Settings"),
        ),
      ),
      body: Column(
        children: [
          ListTile(
            title: const Text(
              'Switch Theme',
            ),
            trailing: Obx(
                  () => Switch(
                value: themeController .currentTheme.value == ThemeMode.dark,
                onChanged: (value) {
                  themeController .switchTheme();
                  Get.changeThemeMode(themeController .currentTheme.value);
                },
                activeColor: CustomTheme.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
