import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int index) onTap;
  const CustomNavBar({
    Key? key,
    required this.currentIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(
        top: Radius.circular(30),
      ),
      child: BottomAppBar(
        notchMargin: 10,
        color: Colors.white,
        shape: const CircularNotchedRectangle(),
        child: Container(
          color: Colors.white,
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(
                  flex: 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      MaterialButton(
                        minWidth: 40,
                        onPressed: () {
                          onTap(0);
                        },
                        child: Icon(
                          Icons.home,
                          size: 25,
                          color: currentIndex == 0 ? Colors.blue : Colors.grey,
                        ),
                      ),
                      MaterialButton(
                        minWidth: 40,
                        onPressed: () {
                          onTap(1);
                        },
                        child: Icon(
                          Icons.notifications,
                          size: 25,
                          color: currentIndex == 1 ? Colors.blue : Colors.grey,
                        ),
                      ),
                    ],
                  )),
              Flexible(
                flex: 1,
                child: Container(
                  width: double.infinity,
                ),
              ),
              Flexible(
                flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MaterialButton(
                        minWidth: 40,
                        onPressed: () {
                          onTap(2);
                        },
                        child: Icon(
                          Icons.chat,
                          size: 25,
                          color: currentIndex == 2 ? Colors.blue : Colors.grey,
                        )),
                    MaterialButton(
                        minWidth: 40,
                        onPressed: () {
                          onTap(3);
                        },
                        child: Icon(
                          Icons.person,
                          size: 25,
                          color: currentIndex == 3 ? Colors.blue : Colors.grey,
                        )),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
