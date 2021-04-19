import 'package:flutter/material.dart';
import 'package:live_player/live_player.dart';

class WeChannelWidget extends StatefulWidget {
  WeChannelWidget({Key key}) : super(key: key);

  @override
  _WeChannelWidgetState createState() => _WeChannelWidgetState();
}

class _WeChannelWidgetState extends State<WeChannelWidget> {
  final String url = 'https://vd1.wmspanel.com/video_demo/stream/playlist.m3u8';

  @override
  Widget build(BuildContext context) {
    return LivePlayer(url: url);
  }
}
