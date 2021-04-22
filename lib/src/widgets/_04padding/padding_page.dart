import 'package:flutter/material.dart';

class PaddingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 30, left: 50, right: 10),
      child: Container(
        height: 100,
        color: Colors.deepPurple,
      ),
    );
  }
}
