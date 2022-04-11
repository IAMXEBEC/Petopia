import 'package:flutter/material.dart';
import 'package:petopia/navpages/home_page.dart';
import 'package:petopia/navpages/liked.dart';
import 'package:petopia/navpages/messages.dart';
import 'package:petopia/navpages/settings.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List Pages = [
    HomePage(),
    messages(),
    liked(),
    settings(),
  ];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          selectedFontSize: 0,
          unselectedFontSize: 0,
          type: BottomNavigationBarType.fixed,
          onTap: onTap,
          currentIndex: currentIndex,
          selectedItemColor: Colors.black54,
          unselectedItemColor: Colors.grey.withOpacity(0.5),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          items: [
            BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
            BottomNavigationBarItem(
                label: "Messages", icon: Icon(Icons.messenger)),
            BottomNavigationBarItem(label: "Liked", icon: Icon(Icons.favorite)),
            BottomNavigationBarItem(
                label: "Settings", icon: Icon(Icons.settings)),
          ]),
    );
  }
}
