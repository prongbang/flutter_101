import 'package:flutter/material.dart';
import 'package:we_channel/we_channel_widget.dart';

class WeChannelPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: WeChannelWidget(),
      ),
    );
  }
}
