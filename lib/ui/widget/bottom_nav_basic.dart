import 'package:flutter/material.dart';

class BottomNavBasic extends StatelessWidget {
  final Function(int) ontap;
  final int selectedIndex;
  const BottomNavBasic(
      {Key? key, required this.ontap, required this.selectedIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          label: "Notification",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: "Profile",
        ),
      ],
      currentIndex: selectedIndex,
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,

      //labels
      showUnselectedLabels: false,
      showSelectedLabels: false,
      onTap: (index) {
        ontap(index);
      },
    );
  }
}
