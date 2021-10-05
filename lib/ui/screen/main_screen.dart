import 'package:bottom_nav_module/ui/screen/home_screen.dart';
import 'package:bottom_nav_module/ui/screen/notification_screen.dart';
import 'package:bottom_nav_module/ui/screen/profile_screen.dart';
import 'package:bottom_nav_module/ui/widget/bottom_nav_basic.dart';
import 'package:bottom_nav_module/ui/widget/bottom_nav_stayle1.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  final int style;
  const MainScreen({Key? key, required this.style}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedNavbar = 0;

  void _changeSelectedNavBar(int index) {
    setState(() {
      _selectedNavbar = index;
    });
  }

  final screen = [
    const HomeScreen(),
    const NotificationScreen(),
    const ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[_selectedNavbar],
      bottomNavigationBar: widget.style == 0
          ? BottomNavBasic(
              ontap: _changeSelectedNavBar,
              selectedIndex: _selectedNavbar,
            )
          : BottomNavStyle1(
              ontap: _changeSelectedNavBar,
              selectedIndex: _selectedNavbar,
            ),
    );
  }
}
