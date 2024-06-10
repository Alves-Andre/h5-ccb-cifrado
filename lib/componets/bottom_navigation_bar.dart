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
          icon: Icon(Icons.home, color: selectedIndex == 0 ? Color.fromARGB(210, 0, 0, 0) : Colors.grey),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite, color: selectedIndex == 1 ? Colors.black : Colors.grey),
          label: 'Favoritos',
        ),
      ],
      currentIndex: selectedIndex,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey,
      onTap: onTabTapped,
    );
  }
}