import 'package:bottom_nav_module/ui/screen/chat_screen.dart';
import 'package:bottom_nav_module/ui/screen/home_screen.dart';
import 'package:bottom_nav_module/ui/screen/notification_screen.dart';
import 'package:bottom_nav_module/ui/screen/profile_screen.dart';
import 'package:bottom_nav_module/ui/widget/bottom_nav_stayle2.dart';
import 'package:bottom_nav_module/ui/widget/bottom_nav_style3.dart';
import 'package:flutter/material.dart';

class MainScreenPageview extends StatefulWidget {
  final int style;
  const MainScreenPageview({Key? key, required this.style}) : super(key: key);

  @override
  _MainScreenPageviewState createState() => _MainScreenPageviewState();
}

class _MainScreenPageviewState extends State<MainScreenPageview> {
  int selectedPage = 0;
  PageController pageController = PageController(
    initialPage: 0,
  );
  void _changeSelectedNavBar(int index) {
    setState(() {
      selectedPage = index;
    });
    pageController.jumpToPage(selectedPage);
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  final screen = [
    const HomeScreen(),
    const NotificationScreen(),
    const ChatScreen(),
    const ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
          controller: pageController,
          physics: const NeverScrollableScrollPhysics(),
          onPageChanged: (index) {
            setState(() {
              selectedPage = index;
            });
          },
          children: screen),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: widget.style == 3
          ? const SizedBox()
          : FloatingActionButton(
              backgroundColor: Colors.blue,
              onPressed: () {},
              child: const Center(
                child: Icon(
                  Icons.shop,
                  size: 20,
                ),
              ),
            ),
      bottomNavigationBar: widget.style == 2
          ? CustomNavBar(
              currentIndex: selectedPage, onTap: _changeSelectedNavBar)
          : BottomNavStyle3(
              ontap: _changeSelectedNavBar,
              selectedIndex: selectedPage,
            ),
    );
  }
}
