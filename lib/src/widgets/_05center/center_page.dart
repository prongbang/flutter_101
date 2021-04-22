import 'package:flutter/material.dart';

class CenterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      color: Colors.cyan,
      child: Center(
        child: Container(
          height: 100,
          width: 100,
          color: Colors.amber,
        ),
      ),
    );
  }
}
