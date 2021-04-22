import 'package:flutter/material.dart';

class DatePickerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        onPressed: () {
          _showDatePicker(context);
        },
        child: Text('Show Date Picker'),
      ),
    );
  }

  void _showDatePicker(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    );
    print(picked);
  }
}
