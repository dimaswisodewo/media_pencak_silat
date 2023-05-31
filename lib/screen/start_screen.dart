import 'package:flutter/material.dart';
import 'package:media_pencak_silat/constants.dart';
import 'package:media_pencak_silat/widget/menu_item.dart';
import 'package:media_pencak_silat/static_views.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  GridView makeGridMenu() {
    return GridView(
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        mainAxisExtent: 307,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 15,
        mainAxisSpacing: 10,
      ),
      children: Constants.menuList.map((menu) {
        return MenuItem(menu: menu);
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: StaticViews.makeAppBar(
        title: const Text(
          "Media Pembelajaran Pencak Silat",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        color: Colors.grey.shade900,
        child: makeGridMenu(),
      ),
    );
  }
}
