import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoPlayerPure extends StatefulWidget {
  const VideoPlayerPure({required this.url, super.key});

  final String url;

  String? getVideoId() {
    return YoutubePlayer.convertUrlToId(url);
  }

  @override
  State<StatefulWidget> createState() {
    return _VideoPlayerPureState();
  }
}

class _VideoPlayerPureState extends State<VideoPlayerPure> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: widget.getVideoId() ?? 'iLnmTe5Q2Qw',
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
      player: YoutubePlayer(
        controller: _controller,
      ),
      builder: (context, player) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: MediaQuery.of(context).padding.top),
            YoutubePlayer(
              controller: _controller,
              showVideoProgressIndicator: true,
              progressIndicatorColor: Colors.amber,
              progressColors: const ProgressBarColors(
                playedColor: Colors.amber,
                handleColor: Colors.amberAccent,
              ),
            ),
          ],
        );
      },
    );
  }
}
