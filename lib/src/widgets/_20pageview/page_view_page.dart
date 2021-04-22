import 'package:flutter/material.dart';

class PageViewPage extends StatelessWidget {
  final PageController controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: PageView(
        scrollDirection: Axis.horizontal, // Axis.vertical
        controller: controller,
        children: [
          Container(
            color: Colors.blue[100],
            child: Center(
              child: Text('First Page'),
            ),
          ),
          Container(
            color: Colors.blue[200],
            child: Center(
              child: Text('Second Page'),
            ),
          ),
          Container(
            color: Colors.blue[300],
            child: Center(
              child: Text('Third Page'),
            ),
          )
        ],
      ),
    );
  }
}
