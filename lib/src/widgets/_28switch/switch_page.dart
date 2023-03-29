import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SwitchPage extends StatefulWidget {
  @override
  _SwitchPageState createState() => _SwitchPageState();
}

class _SwitchPageState extends State<SwitchPage> {
  bool _lights1 = false;
  bool _lights2 = false;
  bool _lights3 = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('SwitchListTile'),
          SwitchListTile(
            title: const Text('Lights'),
            value: _lights1,
            onChanged: (bool value) {
              setState(() {
                _lights1 = value;
              });
            },
            secondary: const Icon(Icons.lightbulb_outline),
          ),
          Text('Switch'),
          Switch(
            value: _lights2,
            onChanged: (bool value) {
              setState(() {
                _lights2 = value;
              });
            },
          ),
          CupertinoSwitch(
            value: _lights3,
            onChanged: (bool value) {
              setState(() {
                _lights3 = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
