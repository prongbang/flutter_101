import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DatePickerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Android'),
          Center(
            child: TextButton(
              onPressed: () {
                _showDatePicker(context);
              },
              child: Text('Show Date Picker'),
            ),
          ),
          SizedBox(height: 16),
          Text('iOS'),
          Container(
            height: 400,
            child: CupertinoDatePicker(
              initialDateTime: DateTime.now(),
              onDateTimeChanged: (val) {
                print(val);
              },
            ),
          ),
        ],
      ),
    );
  }

  void _showDatePicker(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    );
    print(picked);
  }
}
