import 'package:flutter/material.dart';
import 'package:live_player/live_player.dart';

class VideoStreamingWidget extends StatefulWidget {
  VideoStreamingWidget({Key key}) : super(key: key);

  @override
  _VideoStreamingWidgetState createState() => _VideoStreamingWidgetState();
}

class _VideoStreamingWidgetState extends State<VideoStreamingWidget> {
  final String url = 'https://vd1.wmspanel.com/video_demo/stream/playlist.m3u8';

  @override
  Widget build(BuildContext context) {
    return LivePlayer(url: url);
  }
}
