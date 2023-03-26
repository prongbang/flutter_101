import 'package:flutter/material.dart';
import 'package:live_player/live_player.dart';
import 'package:we_channel/domain/channel.dart';

class PreviewWidget extends StatelessWidget {
  final Channel channel;
  final String _url = 'https://vd1.wmspanel.com/video_demo/stream/playlist.m3u8';

  const PreviewWidget({Key? key, required this.channel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LivePlayer(url: channel.hlsUrl),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage(channel.avatar),
                  backgroundColor: Colors.transparent,
                ),
                SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      channel.title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Text(channel.author),
                    Row(
                      children: [
                        Text(channel.view),
                        Text('•'),
                        Text(channel.date),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('200 Comments'),
          ),
          Divider(),
          Expanded(
            child: ListView.separated(
              itemCount: 1,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 25.0,
                        backgroundImage: NetworkImage(channel.avatar),
                        backgroundColor: Colors.transparent,
                      ),
                      SizedBox(width: 8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            channel.title,
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          Text(channel.author),
                        ],
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) => Divider(),
            ),
          )
        ],
      ),
    );
  }
}
