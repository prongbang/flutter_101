import 'package:flutter/material.dart';

class CheckboxRadioPage extends StatefulWidget {
  @override
  State<CheckboxRadioPage> createState() => _CheckboxRadioPageState();
}

class _CheckboxRadioPageState extends State<CheckboxRadioPage> {
  final _formKey = GlobalKey<FormState>();
  bool _checkbox1 = false;
  bool _checkbox2 = false;
  String _gender = '';

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Container(
        margin: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Checkbox', style: Theme.of(context).textTheme.titleMedium),
            StatefulBuilder(builder: (context, setState) {
              return Checkbox(
                value: _checkbox1,
                onChanged: (value) {
                  setState(() => {_checkbox1 = value ?? false});
                  print(value);
                },
              );
            }),
            Text(
              'CheckboxListTile',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            StatefulBuilder(builder: (context, setState) {
              return CheckboxListTile(
                title: const Text('Animate Slowly'),
                value: _checkbox2,
                onChanged: (value) {
                  setState(() => {_checkbox2 = value ?? false});
                  print(value);
                },
                secondary: const Icon(Icons.hourglass_empty),
              );
            }),
            Text('Radio', style: Theme.of(context).textTheme.titleMedium),
            StatefulBuilder(builder: (context, setState) {
              return Column(
                children: [
                  Row(
                    children: [
                      SizedBox(width: 14),
                      Radio(
                        value: "male",
                        groupValue: _gender,
                        onChanged: (value) {
                          setState(() {
                            _gender = value.toString();
                          });
                        },
                      ),
                      SizedBox(width: 14),
                      Text("Male"),
                    ],
                  ),
                  RadioListTile(
                    title: Text("Female"),
                    value: "female",
                    groupValue: _gender,
                    onChanged: (value) {
                      setState(() {
                        _gender = value.toString();
                      });
                    },
                  ),
                  RadioListTile(
                    title: Text("Other"),
                    value: "other",
                    groupValue: _gender,
                    onChanged: (value) {
                      setState(() {
                        _gender = value.toString();
                      });
                    },
                  )
                ],
              );
            }),
          ],
        ),
      ),
    );
  }
}
