import 'package:flutter/material.dart';

class LoadingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text('CircularProgressIndicator'),
          CircularProgressIndicator(),
          Text('LinearProgressIndicator'),
          LinearProgressIndicator(),
        ],
      ),
    );
  }
}
