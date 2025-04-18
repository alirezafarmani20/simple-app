// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/expelor/expelor_screen.dart';
import 'package:instagram_clone/screens/home/home_screen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int _index = 0;
  List<Widget> _pages = [HomeScreen() ,ExpelorScreen() ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //creating buttom navigstion bar
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (int index) {
          setState(() {
            _index = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            label: "home",
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "expelor",
            icon: Icon(Icons.search_off_outlined),
            activeIcon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            label: "post",
            icon: Icon(Icons.post_add_outlined),
            activeIcon: Icon(Icons.post_add),
          ),
          BottomNavigationBarItem(
            label: "like",
            icon: Icon(Icons.favorite_border),
            activeIcon: Icon(Icons.favorite_sharp),
          ),
          BottomNavigationBarItem(
            label: "user",
            icon: Icon(Icons.person_2_outlined),
            activeIcon: Icon(Icons.person),
          ),
        ],
      ),
      
      body:_pages[_index]
    );
  }
}
