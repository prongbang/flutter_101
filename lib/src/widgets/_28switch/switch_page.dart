import 'package:flutter/material.dart';

class SwitchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text('SwitchListTile'),
          SwitchListTile(
            title: const Text('Lights'),
            value: true,
            onChanged: (bool value) {
              // setState(() {
              //   _lights = value;
              // });
            },
            secondary: const Icon(Icons.lightbulb_outline),
          ),
          Text('Switch'),
          Switch(
            value: true,
            onChanged: (bool value) {
              // setState(() {
              //   _lights = value;
              // });
            },
          ),
        ],
      ),
    );
  }
}
