import 'package:flutter/material.dart';

class StackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.cyan,
      child: Stack(
        children: <Widget>[
          Container(
            width: 130,
            height: 130,
            color: Colors.red,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [Text('1', style: TextStyle(color: Colors.white))],
            ),
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.green,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [Text('2', style: TextStyle(color: Colors.white))],
            ),
          ),
          Container(
            width: 80,
            height: 80,
            color: Colors.blue,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [Text('3', style: TextStyle(color: Colors.white))],
            ),
          ),
        ],
      ),
    );
  }
}
