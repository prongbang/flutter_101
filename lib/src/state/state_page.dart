import 'package:flutter/material.dart';

class StatePage extends StatefulWidget {
  @override
  _StatePageState createState() => _StatePageState();
}

class _StatePageState extends State<StatePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    print('Render');
    return Scaffold(
      appBar: AppBar(title: Text('State')),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$_counter'),
              TextButton(
                child: Text('+Increase'),
                onPressed: () {
                  setState(() {
                    _counter++;
                  });
                },
              ),
              SizedBox(width: 16),
              TextButton(
                child: Text('-Decrease'),
                onPressed: () {
                  setState(() {
                    _counter--;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
