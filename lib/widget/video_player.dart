import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';

class VideoPlayer extends StatefulWidget {
  const VideoPlayer({required this.url, super.key});

  final String url;

  @override
  State<StatefulWidget> createState() {
    return _VideoPlayerState();
  }
}

class _VideoPlayerState extends State<VideoPlayer> {
  VideoPlayerController? videoPlayerController;
  ChewieController? chewieController;
  Chewie? playerWidget;

  @override
  void initState() {
    super.initState();
    // Init video player controller
    videoPlayerController = VideoPlayerController.network(
      widget.url,
    );

    // Init chewie controller
    if (videoPlayerController != null) {
      chewieController = ChewieController(
        videoPlayerController: videoPlayerController!,
        autoPlay: true,
        looping: false,
      );

      // Init player widget
      playerWidget = Chewie(
        controller: chewieController!,
      );
    }
  }

  @override
  void dispose() {
    videoPlayerController?.dispose();
    chewieController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return playerWidget == null
        ? const Center(
            child: Text(
              "Failed to initialize video player!",
              style: TextStyle(color: Colors.white),
            ),
          )
        : playerWidget!;
  }
}
