import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:twitter_clone/constants/constants.dart';
import 'package:twitter_clone/screens/home_page.dart';

void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Twitter X',
      debugShowCheckedModeBanner: false,
      theme: CustomTheme.lightTheme,
      darkTheme: CustomTheme.darkTheme,
      themeMode: ThemeMode.system,

      home: MyHomePage(),
    );


  }


}