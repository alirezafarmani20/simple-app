// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:instagram_clone/widgets/avatar.dart';
import 'package:instagram_clone/widgets/post.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
