import 'package:first_app/screens/cart.dart';
import 'package:first_app/screens/home_screen.dart';
import 'package:first_app/screens/profile.dart';
import 'package:first_app/screens/search.dart';
import 'package:flutter/material.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() {
    return _TabsScreenState();
  }
}

int _currentIndex = 0;

List<Widget> _screens = [
  const HomeScreen(),
  const SearchScreen(),
  const CartScreen(),
  const Profile()
];

class _TabsScreenState extends State<TabsScreen> {
  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _screens[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: _onTabTapped,
          backgroundColor: const Color.fromARGB(206, 255, 251, 251),
          selectedItemColor: const Color.fromARGB(255, 116, 7, 66),
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.production_quantity_limits), label: 'Cart'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
        ));
  }
}
