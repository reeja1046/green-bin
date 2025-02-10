import 'package:easytrash/admin/view/completed.dart';
import 'package:easytrash/admin/view/home.dart';
import 'package:easytrash/admin/view/pending.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectedIndex = 0;

  final _pages = [
    const AdminHome(),
    // const CompletedRequest(),
    const PendingRequest()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          // BottomNavigationBarItem(
          //   label: 'Home',
          //   icon: Icon(Icons.home),
          // ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(Icons.home),
          ),
        ],
        onTap: (index) {
          if (index >= 0 && index < _pages.length) {
            setState(() {
              selectedIndex = index;
            });
          }
        },
      ),
    );
  }
}
