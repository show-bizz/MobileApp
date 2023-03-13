import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubePlayerVideos extends StatefulWidget {
  @override
  _YoutubePlayerVideosState createState() => _YoutubePlayerVideosState();
}

class _YoutubePlayerVideosState extends State<YoutubePlayerVideos> {
  YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: 'YoS7ytGXVn8',
    flags: YoutubePlayerFlags(
      autoPlay: false,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: YoutubePlayer(
        controller: _controller,
        showVideoProgressIndicator: true,
        progressColors: ProgressBarColors(
            playedColor: Colors.amber, handleColor: Colors.amberAccent),
      ),
    );
  }
}
