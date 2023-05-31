import 'package:flutter/material.dart';
import 'package:media_pencak_silat/widget/video_player.dart';
import 'package:media_pencak_silat/static_views.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({required this.title, required this.videoUrl, super.key});

  final String title;
  final String videoUrl;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: StaticViews.makeAppBar(
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(bottom: 24.0),
        color: Colors.grey.shade900,
        child: SingleChildScrollView(
          child: Column(children: [
            VideoPlayer(url: videoUrl),
          ]),
        ),
      ),
    );
  }
}
