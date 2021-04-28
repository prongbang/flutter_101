import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SwitchPage extends StatefulWidget {
  @override
  _SwitchPageState createState() => _SwitchPageState();
}

class _SwitchPageState extends State<SwitchPage> {
  bool _lights = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text('SwitchListTile'),
          SwitchListTile(
            title: const Text('Lights'),
            value: _lights,
            onChanged: (bool value) {
              setState(() {
                _lights = value;
              });
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
          CupertinoSwitch(
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
