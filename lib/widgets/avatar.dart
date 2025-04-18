import 'package:flutter/material.dart';

Widget Avatar() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 12),
    child: Column(
      children: [
        Container(
          width: 60, 
          height: 60,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.red , width: 3)
          ),
          child: Padding(
            padding: EdgeInsets.all(5),
            child: CircleAvatar(
              backgroundImage: NetworkImage(""),
            ),
          ),
        ),
        Text("text text")
      ],
    ),
  );
}