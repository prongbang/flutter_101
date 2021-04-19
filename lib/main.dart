import 'package:core/app_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_101/src/di/service_locator.dart';
import 'package:get_it/get_it.dart';
import 'package:we_channel/presentation/we_channel_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  GetIt.I.registerFactory(() => AppConfig(
        applicationName: "Flutter 101",
        buildFlavor: AppConfig.productionFlavor,
        baseURL: "https://jsonplaceholder.typicode.com",
      ));
  print("Flavor: ${AppConfig.productionFlavor}");
  ServiceLocator.setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter 101',
      // debugShowCheckedModeBanner: false,
      // onGenerateRoute: AppRouters.routes,
      // theme: themeWec,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => WeChannelPage(),
                  ),
                );
              },
              child: Text('Open Live Stream player'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
