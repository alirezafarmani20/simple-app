// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:instagram_clone/core/module/category_module.dart';


Widget  Category(CategoryViewModule vm) {
  // ignore: avoid_unnecessary_containers
  return Container(
    decoration:  BoxDecoration(
      border: Border.all(color: Colors.black45),
      borderRadius: BorderRadius.circular(8) , 
      color: Colors.white,
    ),
    margin: EdgeInsets.only(left: 10, right: 10),
    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
    child: Row(
      children: [
        Icon(vm.icons), 
        SizedBox(width: 6,), 
        Text(vm.title)
      ],
    ),
  );
}