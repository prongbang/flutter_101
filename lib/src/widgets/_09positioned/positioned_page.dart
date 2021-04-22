import 'package:flutter/material.dart';

class PositionedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      height: 200,
      child: Stack(
        children: [
          Positioned(
            left: 16,
            bottom: 16,
            child: Container(
              color: Colors.red,
              height: 50,
              width: 100,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              color: Colors.blue,
              height: 50,
              width: 100,
            ),
          ),
        ],
      ),
    );
  }
}
