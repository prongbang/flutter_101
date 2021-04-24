import 'package:flutter/material.dart';
import 'package:we_channel/presentation/we_channel_widget.dart';

class WeChannelPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WE CHANNEL'),
      ),
      body: WeChannelWidget(),
    );
  }
}
