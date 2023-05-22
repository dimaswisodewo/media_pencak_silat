import 'package:flutter/material.dart';
import 'package:media_pencak_silat/enums.dart';
import 'package:media_pencak_silat/extensions.dart';
import 'package:media_pencak_silat/screen/detail_screen.dart';
import 'package:media_pencak_silat/model/item.dart';

class ListItem extends StatelessWidget {
  const ListItem({required this.item, required this.onTapped, super.key});

  final Item item;
  final void Function() onTapped;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Colors.black,
      contentPadding:
          const EdgeInsets.symmetric(horizontal: 0.0, vertical: 10.0),
      leading: Container(
        padding: const EdgeInsets.only(right: 12.0),
        decoration: const BoxDecoration(
          border: Border(
            right: BorderSide(
              width: 1.0,
              color: Colors.white24,
            ),
          ),
        ),
        child: CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(item.image),
        ),
        // child: ClipRRect(
        //   borderRadius: BorderRadius.circular(10),
        //   child: Image(
        //     height: 60.0,
        //     fit: BoxFit.fitWidth,
        //     image: AssetImage(item.image),
        //   ),
        // ),
      ),
      title: Text(
        item.title,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Divider(
              thickness: 3.0,
              color: item.category == ItemCategory.jatuhan
                  ? Colors.green
                  : Colors.amber,
            ),
          ),
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text(
                item.category.toShortString().toCapitalizedString(),
                style: const TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
      trailing: const Icon(Icons.keyboard_arrow_right,
          color: Colors.white, size: 30.0),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreen(
              title: item.title,
              videoUrl: item.video,
            ),
          ),
        );
      },
    );
  }
}
