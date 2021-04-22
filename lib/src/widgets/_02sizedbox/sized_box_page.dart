import 'package:flutter/material.dart';

class SizedBoxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 100,
          child: Container(
            color: Colors.cyan,
            child: Text('SizedBox'),
          ),
        ),
        Container(
          height: 200,
          child: SizedBox.expand(
            child: Container(
              color: Colors.green,
              child: Text('SizedBox.expand'),
            ),
          ),
        ),
      ],
    );
  }
}
