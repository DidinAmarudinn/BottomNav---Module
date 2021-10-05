import 'package:bottom_nav_module/ui/screen/main_screen.dart';
import 'package:bottom_nav_module/ui/screen/main_screen_pageview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SelectScreen extends StatelessWidget {
  const SelectScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MainScreen(
                    style: 0,
                  ),
                ),
              );
            },
            child: const Text(
              "Bottom Nav Basic",
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MainScreen(
                    style: 1,
                  ),
                ),
              );
            },
            child: const Text(
              "Bottom Nav Style 1",
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MainScreenPageview(style: 2),
                ),
              );
            },
            child: const Text(
              "Bottom Nav Style 2",
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MainScreenPageview(style: 3),
                ),
              );
            },
            child: const Text(
              "Bottom Nav Style 3",
            ),
          ),
        ],
      ),
    );
  }
}
