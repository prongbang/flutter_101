import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(100),
      child: Container(
        color: Colors.green,
        padding: const EdgeInsets.all(100),
      ),
    );
  }
}
