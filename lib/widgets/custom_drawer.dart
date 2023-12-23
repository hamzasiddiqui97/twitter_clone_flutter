import 'package:flutter/material.dart';


class CustomAppDrawer extends StatelessWidget {
  const CustomAppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: const [

          DrawerHeader(child: Text('Hamza Siddiqui')),


        ],
      ),
    );
  }
}

