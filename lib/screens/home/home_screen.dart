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
    return  Column(
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
      );
  }
}