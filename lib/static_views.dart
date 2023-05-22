import 'package:flutter/material.dart';

class StaticViews {
  static AppBar makeAppBar({Widget? title, Color? backgroundColor}) {
    return AppBar(
      elevation: 0,
      foregroundColor: Colors.white,
      backgroundColor: backgroundColor ?? Colors.grey.shade900,
      title: title,
    );
  }

  static TextField makeSearchField({void Function(String)? onSearch}) {
    return TextField(
      onChanged: onSearch,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey[850],
        contentPadding: const EdgeInsets.all(0),
        prefixIcon: Icon(
          Icons.search,
          color: Colors.grey.shade500,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: BorderSide.none,
        ),
        hintStyle: TextStyle(
          fontSize: 14,
          color: Colors.grey.shade500,
        ),
        hintText: "Search",
      ),
    );
  }
}
