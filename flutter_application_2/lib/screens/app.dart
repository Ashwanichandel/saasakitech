import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/search.dart';
import 'package:flutter_application_2/screens/yourlibrary.dart';

import 'home.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppStateState();
}

class _MyAppStateState extends State<MyApp> {
  final Tabs = [Home(), YourLibrary()];
  int currentTabIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Tabs[currentTabIndex],
      backgroundColor: Color.fromARGB(255, 194, 12, 158),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentTabIndex,
          onTap: (currentIndex) {
            print("The Current Index is $currentIndex");
            currentTabIndex = currentIndex;
            setState(() {});
          },
          selectedLabelStyle: TextStyle(color: Colors.white),
          backgroundColor: Color.fromARGB(115, 198, 34, 154),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Color.fromARGB(255, 240, 227, 227),
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  color: Color.fromARGB(255, 241, 232, 232),
                ),
                label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.library_books,
                  color: Colors.white,
                ),
                label: 'Your Library'),
          ]),
    );
  }
}
