import 'package:flutter/material.dart';

Widget Post() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      ListTile(
        trailing: Icon(Icons.more_horiz),
        leading: CircleAvatar(radius: 12, backgroundImage: AssetImage("")),
        title: Text("test text", style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      Image(
        image: AssetImage("lib/assets/images/onbg3.png"),
        fit: BoxFit.cover,
        height: 400,
      ),
      Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: Image(
              height: 30,
              width: 30,
              image: AssetImage("lib/assets/icons/heart.png"),
            ),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.comment)),
          IconButton(onPressed: () {}, icon: Icon(Icons.send_outlined)),
          Spacer(),
          IconButton(onPressed: () {}, icon: Icon(Icons.bookmark)),
        ],
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: Text("liked by alireza"),
      ),
    ],
  );
}
