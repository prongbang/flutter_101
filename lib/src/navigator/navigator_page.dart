import 'package:core/arguments_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_101/src/navigator/my_arguments.dart';

class NavigatorPage extends StatelessWidget {
  final String navigatorRoute = '/navigator';

  @override
  Widget build(BuildContext context) {
    final arguments = context.routeArguments<MyArguments>() ?? MyArguments();

    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Text('Data: ${arguments.data}'),
            MaterialButton(
              color: Colors.red,
              child: Text('Pop'),
              onPressed: () {
                if (Navigator.canPop(context)) {
                  Navigator.pop(context, "Callback Data");
                }
              },
            ),
            MaterialButton(
              color: Colors.red[200],
              child: Text('Pop Until'),
              onPressed: () {
                Navigator.popUntil(
                    context, ModalRoute.withName(navigatorRoute));
              },
            ),
            MaterialButton(
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
            MaterialButton(
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
            MaterialButton(
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
            MaterialButton(
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
            MaterialButton(
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
            MaterialButton(
              color: Colors.orange,
              child: Text('Push Named And Remove Until'),
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  navigatorRoute,
                  ModalRoute.withName(navigatorRoute),
                ).then((value) => print(value));
              },
            ),
            MaterialButton(
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
          ],
        ),
      ),
    );
  }
}
