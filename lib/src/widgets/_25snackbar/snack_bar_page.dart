import 'package:flutter/material.dart';

class SnackBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        onPressed: () {
          _showSnackBar(context);
        },
        child: Text('Show SnackBar'),
      ),
    );
  }

  void _showSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text('Awesome SnackBar!'),
        action: SnackBarAction(
          label: 'Action',
          onPressed: () {},
        ),
      ),
    );
  }
}
