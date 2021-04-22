import 'package:flutter/material.dart';

class RichTextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Text.rich'),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: const Text.rich(
              TextSpan(
                text: 'Hello',
                children: <TextSpan>[
                  TextSpan(
                    text: ' bold ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: 'world!'),
                ],
              ),
            ),
          ),
          Divider(),
          Text('RichText'),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: RichText(
              text: TextSpan(
                text: 'Hello ',
                style: DefaultTextStyle.of(context).style,
                children: <TextSpan>[
                  TextSpan(
                      text: 'bold',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: ' world!'),
                ],
              ),
            ),
          ),
          Divider(),
        ],
      ),
    );
  }
}
