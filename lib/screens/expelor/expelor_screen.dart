import 'package:flutter/material.dart';
import 'package:instagram_clone/core/module/category_module.dart';
import 'package:instagram_clone/widgets/category.dart';

class ExpelorScreen extends StatefulWidget {
  const ExpelorScreen({super.key});

  @override
  State<ExpelorScreen> createState() => _ExpelorScreenState();
}

class _ExpelorScreenState extends State<ExpelorScreen> {
  List<CategoryViewModule> categiries = <CategoryViewModule>[
    CategoryViewModule(icons: Icons.mobile_friendly, title: "Mobile"),
    CategoryViewModule(icons: Icons.laptop, title: "laptop"),
    CategoryViewModule(icons: Icons.video_call, title: "video"),
    CategoryViewModule(icons: Icons.call, title: "telephone"),
    CategoryViewModule(icons: Icons.chair, title: "chair"),
    CategoryViewModule(icons: Icons.watch, title: "Watch"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(12),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.symmetric(vertical: 4),
                        filled: true,
                        fillColor: Colors.grey,
                        border: InputBorder.none,
                        hintText: "search",
                      ),
                    ),
                  ),
                  IconButton(onPressed: () {}, icon: Icon(Icons.qr_code)),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  children:
                      categiries
                          .map((CategoryViewModule e) => Category(e))
                          .toList(),
                ),
              ),
            ),
            SizedBox(height: 12,),
            Expanded(
              child: GridView.builder(
                itemCount: 100,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 2, 
                  mainAxisSpacing: 2
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Image(image: AssetImage("lib/assets/images/onbg3.png"), fit: BoxFit.cover,);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
