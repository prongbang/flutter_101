import 'package:flutter/material.dart';

class RefreshIndicatorPage extends StatelessWidget {
  final List<int> _shades = [50, 100, 200, 300, 400, 500, 600, 700, 800, 900];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: RefreshIndicator(
        child: ListView(
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
        onRefresh: () async {
          await Future.delayed(Duration(seconds: 3));
          print('Refreshed');
        },
      ),
    );
  }
}
