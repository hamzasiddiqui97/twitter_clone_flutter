import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key});

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 60,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(3)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.home_filled,
                  semanticLabel: 'home',
                )),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search, semanticLabel: 'search'),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.people, semanticLabel: 'communities'),
            ),
          ],
        ),
      ),
    );
  }
}
