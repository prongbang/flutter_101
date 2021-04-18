import 'package:flutter/material.dart';
import 'package:video_streaming/video_streaming_widget.dart';

class VideoStreamingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: VideoStreamingWidget(),
      ),
    );
  }
}
