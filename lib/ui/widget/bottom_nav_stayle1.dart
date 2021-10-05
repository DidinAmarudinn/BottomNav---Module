import 'package:flutter/material.dart';

class BottomNavStyle1 extends StatelessWidget {
  final Function(int) ontap;
  final int selectedIndex;
  const BottomNavStyle1(
      {Key? key, required this.ontap, required this.selectedIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (index) {
        ontap(index);
      },
      unselectedItemColor: Colors.grey,
      selectedItemColor: Colors.white,
      backgroundColor: Colors.white,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      currentIndex: selectedIndex,
      elevation: 4,
      items: [Icons.home, Icons.notifications, Icons.person]
          .asMap()
          .map(
            (key, value) => MapEntry(
              key,
              BottomNavigationBarItem(
                label: "",
                icon: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 6, horizontal: 20),
                  decoration: BoxDecoration(
                    color:
                        selectedIndex == key ? Colors.blue : Colors.transparent,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Icon(value),
                ),
              ),
            ),
          )
          .values
          .toList(),
    );
  }
}
