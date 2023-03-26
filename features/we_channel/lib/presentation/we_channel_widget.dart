import 'package:flutter/material.dart';
import 'package:we_channel/domain/channel.dart';
import 'package:we_channel/preview/presentation/preview_page.dart';

class WeChannelWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Channel>>(
      future: Channel().mocks(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<Channel> channels = snapshot.data ?? <Channel>[];
          return ListView.separated(
            itemCount: channels.length,
            itemBuilder: (context, index) {
              final channel = channels[index];
              return InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => PreviewPage(),
                        settings: RouteSettings(arguments: channel),
                      ));
                },
                child: Container(
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          AspectRatio(
                            aspectRatio: 16 / 9,
                            child: Image.network(
                              channel.cover,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            bottom: 8,
                            right: 8,
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                vertical: 4,
                                horizontal: 8,
                              ),
                              decoration: BoxDecoration(
                                color: Color(0x88000000),
                                borderRadius: BorderRadius.circular(3),
                              ),
                              child: Text(
                                channel.time,
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          )
                        ],
                      ),
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
                    ],
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) {
              return Divider();
            },
          );
        }
        return Center(child: CircularProgressIndicator());
      },
    );
  }
}
