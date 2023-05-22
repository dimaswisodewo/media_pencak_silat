import 'package:flutter/material.dart';
import 'package:media_pencak_silat/constants.dart';
import 'package:media_pencak_silat/widget/list_item.dart';
import 'package:media_pencak_silat/model/item.dart';
import 'package:media_pencak_silat/static_views.dart';

class User {
  final String name;
  final String username;
  final String image;
  bool isFollowedByMe;

  User(this.name, this.username, this.image, this.isFollowedByMe);
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Item> _users = [
    ...Constants.jatuhanList,
    ...Constants.tangkapanList,
  ];

  List<Item> _foundedItems = [];

  @override
  void initState() {
    super.initState();

    setState(() {
      _foundedItems = _users;
    });
  }

  onSearch(String search) {
    setState(() {
      _foundedItems = _users
          .where((user) => user.title.toLowerCase().contains(search))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: StaticViews.makeAppBar(
        title: StaticViews.makeSearchField(onSearch: onSearch),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        color: Colors.grey.shade900,
        child: makeListItems(),
      ),
    );
  }

  Widget makeListItems() {
    return _foundedItems.isNotEmpty
        ? ListView.builder(
            itemCount: _foundedItems.length,
            itemBuilder: (context, index) {
              return ListItem(item: _foundedItems[index], onTapped: () {});
            })
        : const Center(
            child: Text(
              "No items found",
              style: TextStyle(color: Colors.white),
            ),
          );
  }
}
