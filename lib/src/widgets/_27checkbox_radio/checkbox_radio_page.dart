import 'package:flutter/material.dart';

class CheckboxRadioPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Container(
        child: Column(
          children: [
            Text('Checkbox'),
            Checkbox(
              value: true,
              onChanged: (value) {
                print(value);
              },
            ),
            Text('CheckboxListTile'),
            CheckboxListTile(
              title: const Text('Animate Slowly'),
              value: true,
              onChanged: (value) {
                print(value);
              },
              secondary: const Icon(Icons.hourglass_empty),
            ),
            Text('Radio'),
            ListTile(
              title: const Text('Radio'),
              leading: Radio<bool>(
                value: true,
                groupValue: true,
                onChanged: (value) {
                  print(value);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
