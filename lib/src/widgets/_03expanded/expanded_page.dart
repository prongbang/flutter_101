import 'package:flutter/material.dart';

class ExpandedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: Column(
        children: <Widget>[
          Container(
            color: Colors.blue,
            height: 100,
            width: 100,
            child: Text('Height: 100'),
          ),
          Expanded(
            child: Container(
              color: Colors.amber,
              width: 100,
              child: Text('Height: Expanded'),
            ),
          ),
          Container(
            color: Colors.blue,
            height: 100,
            width: 100,
            child: Text('Height: 100'),
          ),
        ],
      ),
    );
  }
}
