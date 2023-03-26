import 'package:core/arguments_route.dart';
import 'package:flutter/material.dart';
import 'package:we_channel/domain/channel.dart';
import 'package:we_channel/preview/presentation/preview_widget.dart';

class PreviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final arguments = context.routeArguments<Channel>();
    if (arguments == null) {
      Navigator.pop(context);
      return SizedBox();
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(arguments.title),
      ),
      body: SafeArea(
        child: PreviewWidget(channel: arguments),
      ),
    );
  }
}
