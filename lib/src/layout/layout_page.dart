import 'package:flutter/material.dart';

class LayoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Row: mainAxisAlignment: spaceBetween'),
        Container(
          color: Colors.yellow,
          height: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(color: Colors.red, height: 50, width: 50),
              Container(color: Colors.green, height: 50, width: 50),
              Container(color: Colors.blue, height: 50, width: 50),
            ],
          ),
        ),
        Text('Row: mainAxisAlignment: spaceEvenly'),
        Container(
          color: Colors.yellow,
          height: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(color: Colors.red, height: 50, width: 50),
              Container(color: Colors.green, height: 50, width: 50),
              Container(color: Colors.blue, height: 50, width: 50),
            ],
          ),
        ),
        Text('Column: mainAxisAlignment: spaceAround'),
        Container(
          color: Colors.lightGreenAccent,
          width: double.infinity,
          height: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(color: Colors.red, height: 50, width: 50),
              Container(color: Colors.green, height: 50, width: 50),
              Container(color: Colors.blue, height: 50, width: 50),
            ],
          ),
        ),
        Text('Column: mainAxisAlignment: spaceAround, crossAxisAlignment: end'),
        Container(
          color: Colors.cyan,
          width: double.infinity,
          height: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(color: Colors.red, height: 50, width: 50),
              Container(color: Colors.green, height: 50, width: 50),
              Container(color: Colors.blue, height: 50, width: 50),
            ],
          ),
        ),
        Text(
            'Column: mainAxisAlignment: spaceAround, crossAxisAlignment: start'),
        Container(
          color: Colors.deepPurple,
          width: double.infinity,
          height: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(color: Colors.red, height: 50, width: 50),
              Container(color: Colors.green, height: 50, width: 50),
              Container(color: Colors.blue, height: 50, width: 50),
            ],
          ),
        ),
      ],
    );
  }
}
