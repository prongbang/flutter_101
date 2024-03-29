import 'dart:io';

import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';

class LivePlayer extends StatefulWidget {
  final ValueChanged<bool>? onFullscreen;
  final String url;
  final double aspectRatio;

  const LivePlayer({
    Key? key,
    this.onFullscreen,
    required this.url,
    this.aspectRatio = 16 / 9,
  }) : super(key: key);

  @override
  _LivePlayerState createState() => _LivePlayerState();
}

class _LivePlayerState extends State<LivePlayer> {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: widget.aspectRatio,
      child: BetterPlayer(
        controller: BetterPlayerController(
          const BetterPlayerConfiguration(
            autoPlay: true,
          ),
          betterPlayerDataSource: BetterPlayerDataSource(
            BetterPlayerDataSourceType.network,
            widget.url,
            headers: {
              HttpHeaders.authorizationHeader:
                  "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiI5In0.Ww7OlKzPUUfKX4kO8iON0_k7xgdsMu9hr5ZPufSirDw",
            },
            liveStream: false,
            subtitles: [
              BetterPlayerSubtitlesSource(
                type: BetterPlayerSubtitlesSourceType.network,
                name: "EN",
                urls: [
                  "https://dl.dropboxusercontent.com/s/71nzjo2ux3evxqk/example_subtitles.srt"
                ],
              ),
              BetterPlayerSubtitlesSource(
                type: BetterPlayerSubtitlesSourceType.network,
                name: "DE",
                urls: [
                  "https://dl.dropboxusercontent.com/s/71nzjo2ux3evxqk/example_subtitles.srt"
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
