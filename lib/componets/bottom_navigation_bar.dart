import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onTabTapped;

  BottomNavigation({required this.selectedIndex, required this.onTabTapped});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home, color: selectedIndex == 0 ? Color.fromARGB(255, 46, 0, 54) : Colors.grey),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite, color: selectedIndex == 1 ? Color.fromARGB(255, 46, 0, 54) : Colors.grey),
          label: 'Favoritos',
        ),
      ],
      currentIndex: selectedIndex,
      onTap: onTabTapped,
    );
  }
}