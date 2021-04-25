import 'package:flutter/material.dart';
import 'package:flutter_101/src/login/user.dart';

class LoginPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final _user = User();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                width: 100,
                height: 100,
                child: FlutterLogo(),
              ),
            ),
            Expanded(
              child: Container(
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
                            _user.username = newValue;
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
                            _user.password = newValue;
                          },
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: MaterialButton(
                            height: 60,
                            color: Colors.blue,
                            textColor: Colors.white,
                            onPressed: () async {
                              if (_formKey.currentState.validate()) {
                                _formKey.currentState.save();
                                print('username: ${_user.username}');
                                print('password: ${_user.password}');
                                if (_user.login()) {
                                  await _user.save();
                                  Navigator.pushReplacementNamed(context, '/');
                                } else {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: const Text(
                                        'Username or Password incorrect, Please try again.',
                                      ),
                                    ),
                                  );
                                }
                              }
                            },
                            child: Text('Submit'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
