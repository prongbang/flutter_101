import 'package:core/arguments_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_101/src/navigator/my_arguments.dart';

class NavigatorPage extends StatelessWidget {
  final String navigatorRoute = '/navigator';

  @override
  Widget build(BuildContext context) {
    final arguments = context.routeArguments<MyArguments>() ?? MyArguments();

    return Scaffold(
      appBar: AppBar(
        title: Text('Navigator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            children: [
              Text(
                'Arguments: ${arguments.data}',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),
              Container(
                width: double.infinity,
                height: 60,
                child: MaterialButton(
                  color: Colors.red,
                  child: Text('Pop'),
                  onPressed: () {
                    if (Navigator.canPop(context)) {
                      Navigator.pop(context, "Callback Data");
                    }
                  },
                ),
              ),
              SizedBox(height: 16),
              Container(
                width: double.infinity,
                height: 60,
                child: MaterialButton(
                  color: Colors.red[200],
                  child: Text('Pop Until home'),
                  onPressed: () {
                    if (Navigator.canPop(context)) {
                      Navigator.popUntil(context, ModalRoute.withName('/'));
                    }
                  },
                ),
              ),
              SizedBox(height: 16),
              Container(
                width: double.infinity,
                height: 60,
                child: MaterialButton(
                  color: Colors.blue,
                  child: Text('Push: MaterialPageRoute'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NavigatorPage(),
                        settings: RouteSettings(
                          arguments: MyArguments(data: 'Push'),
                        ),
                      ),
                    ).then((value) => print(value));
                  },
                ),
              ),
              SizedBox(height: 16),
              Container(
                width: double.infinity,
                height: 60,
                child: MaterialButton(
                  color: Colors.green,
                  child: Text('Push Replacement: MaterialPageRoute'),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NavigatorPage(),
                        settings: RouteSettings(
                          arguments: MyArguments(data: 'Push Replacement'),
                        ),
                      ),
                    ).then((value) => print(value));
                  },
                ),
              ),
              SizedBox(height: 16),
              Container(
                width: double.infinity,
                height: 60,
                child: MaterialButton(
                  color: Colors.blue[300],
                  child: Text('Push Named'),
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      navigatorRoute,
                      arguments: MyArguments(data: 'Push Named'),
                    ).then((value) => print(value));
                  },
                ),
              ),
              SizedBox(height: 16),
              Container(
                width: double.infinity,
                height: 60,
                child: MaterialButton(
                  color: Colors.green[300],
                  child: Text('Push Replacement Named'),
                  onPressed: () {
                    Navigator.pushReplacementNamed(
                      context,
                      navigatorRoute,
                      arguments: MyArguments(data: 'Push Replacement Named'),
                    ).then((value) => print(value));
                  },
                ),
              ),
              SizedBox(height: 16),
              Container(
                width: double.infinity,
                height: 60,
                child: MaterialButton(
                  color: Colors.orange[300],
                  child: Text('Push And Remove Until'),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NavigatorPage(),
                        settings: RouteSettings(
                          arguments: MyArguments(data: 'Push And Remove Until'),
                        ),
                      ),
                      ModalRoute.withName(navigatorRoute),
                    ).then((value) => print(value));
                  },
                ),
              ),
              SizedBox(height: 16),
              Container(
                width: double.infinity,
                height: 60,
                child: MaterialButton(
                  color: Colors.orange,
                  child: Text('Push Named And Remove Until'),
                  onPressed: () {
                    // Reset to navigator
                    Navigator.pushNamedAndRemoveUntil(
                      context,
                      navigatorRoute,
                      ModalRoute.withName('/'),
                    ).then((value) => print(value));
                  },
                ),
              ),
              SizedBox(height: 16),
              Container(
                width: double.infinity,
                height: 60,
                child: MaterialButton(
                  color: Colors.deepPurple,
                  child: Text('Pop And Push Named'),
                  onPressed: () {
                    Navigator.popAndPushNamed(
                      context,
                      navigatorRoute,
                      arguments: MyArguments(data: 'Pop And Push Named'),
                    ).then((value) => print(value));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
