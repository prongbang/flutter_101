import 'package:flutter/material.dart';

class AsynchronousPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('await/async')),
      body: Container(
        child: Center(
          child: FutureBuilder<String>(
            future: _getData(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(snapshot.data);
              }
              return CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }

  Future<String> _getData() async {
    await Future.delayed(Duration(seconds: 5));
    return 'Hello await/async';
  }
}
