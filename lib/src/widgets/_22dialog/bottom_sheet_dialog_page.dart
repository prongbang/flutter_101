import 'package:flutter/material.dart';

class BottomSheetDialogPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        onPressed: () {
          _showBottomSheet(context);
        },
        child: Text('Show Bottom Sheet'),
      ),
    );
  }

  void _showBottomSheet(BuildContext context) {
    Scaffold.of(context).showBottomSheet(
      (BuildContext context) {
        return Container(
          height: 400,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text('Bottom Sheet'),
              ),
              ListTile(
                leading: Icon(Icons.android),
                title: Text('Title'),
                subtitle: Text('subtitle'),
              ),
              ListTile(
                leading: Icon(Icons.android),
                title: Text('Title'),
                subtitle: Text('subtitle'),
              ),
              ListTile(
                leading: Icon(Icons.android),
                title: Text('Title'),
                subtitle: Text('subtitle'),
              ),
              TextButton(
                child: const Text('Close'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
      elevation: 8,
      backgroundColor: Colors.white,
    );
  }
}
