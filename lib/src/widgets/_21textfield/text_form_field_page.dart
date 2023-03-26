import 'package:flutter/material.dart';

class Login {
  String username;
  String password;

  Login({this.username = '', this.password = ''});
}

class TextFormFieldPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final _login = Login();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Username',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter username';
                  }
                  return null;
                },
                onSaved: (newValue) {
                  _login.username = newValue ?? '';
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter password';
                  }
                  return null;
                },
                onSaved: (newValue) {
                  _login.password = newValue ?? '';
                },
              ),
            ),
            Container(
              width: double.infinity,
              height: 60,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: () {
                    if (_formKey.currentState?.validate() ?? false) {
                      _formKey.currentState?.save();
                      print('username: ${_login.username}');
                      print('password: ${_login.password}');
                    }
                  },
                  child: Text('Submit'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
