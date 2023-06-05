import 'package:flutter/material.dart';
import 'package:media_pencak_silat/widget/video_player_pure.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({required this.title, required this.videoUrl, super.key});

  final String title;
  final String videoUrl;

  @override
  Widget build(BuildContext context) {
    return const VideoPlayerPure(
      url: 'https://www.youtube.com/watch?v=P7ivb_75ikU',
    );
  }
}
