import 'package:flutter/material.dart';
import 'package:media_pencak_silat/enums.dart';
import 'package:media_pencak_silat/model/menu.dart';
import 'package:media_pencak_silat/screen/home_screen.dart';

class MenuItem extends StatelessWidget {
  const MenuItem({required this.menu, super.key});

  final Menu menu;

  void selectMeal(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return HomeScreen(category: menu.category);
    }));
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectMeal(context),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 2),
        child: Column(
          children: [
            // Top card
            Card(
              margin: const EdgeInsets.only(bottom: 0),
              elevation: 0,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(15),
                  topLeft: Radius.circular(15),
                ),
              ),
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  // Image
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(15),
                      topLeft: Radius.circular(15),
                    ),
                    child: Image.asset(
                      menu.image,
                      width: double.infinity,
                      height: 200,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          height: 200,
                          padding: const EdgeInsets.all(15),
                          color: Colors.red,
                          child: Text(error.toString()),
                        );
                      },
                    ),
                  ),
                  // Mask color
                  Container(
                    width: double.infinity,
                    height: 100,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          menu.category == ItemCategory.jatuhan
                              ? Colors.green
                              : Colors.red,
                          const Color.fromRGBO(0, 0, 0, 0),
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 45,
              decoration: BoxDecoration(
                color: menu.category == ItemCategory.jatuhan
                    ? Colors.green
                    : Colors.red,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
              ),
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  menu.title,
                  overflow: TextOverflow.fade,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
