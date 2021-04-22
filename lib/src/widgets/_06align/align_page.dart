import 'package:flutter/material.dart';

class AlignPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.amber,
      child: Align(
        alignment: Alignment.bottomRight,
        child: Container(
          color: Colors.red,
          height: 50,
          width: 100,
        ),
      ),
    );
  }
}
