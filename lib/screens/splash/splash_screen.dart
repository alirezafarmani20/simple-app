// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:instagram_clone/widgets/avatar.dart';
import 'package:instagram_clone/widgets/post.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int _index = 0;
  List<Widget> _pages = [];
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
      appBar: AppBar(
        toolbarHeight: 65,
        title: Text(
          "instagram",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.add),
          iconSize: 40,
        ),
        //titleSpacing: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image(
              width: 30,
              height: 30,
              image: AssetImage("lib/assets/icons/heart.png"),
            ),
          ),
          IconButton(onPressed: () {}, icon: Icon(weight: 30, Icons.send)),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 100,
            child: Padding(
              padding: EdgeInsets.only(left: 7, right: 7, top: 12),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 12,
                itemBuilder: (context, index) {
                  return Avatar();
                },
              ),
            ),
          ),
          Expanded(
            child: ListView.separated(
              padding: EdgeInsets.only(top: 12),
              itemCount: 20,
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return Divider();
              },
              itemBuilder: (context, index) {
                return Post();
              },
            ),
          ),
        ],
      ),
    );
  }
}
