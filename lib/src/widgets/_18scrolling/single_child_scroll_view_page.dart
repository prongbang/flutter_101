import 'package:flutter/material.dart';

class SingleChildScrollViewPage extends StatelessWidget {
  final List<int> _shades = [50, 100, 200, 300, 400, 500, 600, 700, 800, 900];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SingleChildScrollView')),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              for (var s in _shades)
                Container(
                  height: 200,
                  width: double.infinity,
                  color: Colors.blue[s],
                  child: Text('Color: $s'),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
