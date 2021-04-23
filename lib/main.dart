import 'package:core/app_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_101/src/asynchronous/asynchronous_page.dart';
import 'package:flutter_101/src/di/service_locator.dart';
import 'package:flutter_101/src/navigator/navigator_page.dart';
import 'package:flutter_101/src/packages/liquid_swipe_page.dart';
import 'package:flutter_101/src/widgets/_14scaffold/scaffold_page.dart';
import 'package:flutter_101/src/widgets/_15appbar/appbar_page.dart';
import 'package:flutter_101/src/widgets/_15appbar/sliver_app_bar_page.dart';
import 'package:flutter_101/src/widgets/_18scrolling/single_child_scroll_view_page.dart';
import 'package:flutter_101/src/widgets/_23bottombar/bottom_navigation_bar_page.dart';
import 'package:flutter_101/src/widgets/_24drawer/drawer_page.dart';
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
      //
      // # 1
      // initialRoute: '/',
      // routes: {
      //   "/we-channel": (context) => WeChannelPage(),
      //   "/navigator": (context) => NavigatorPage(),
      // },
      //
      // # 2
      // onGenerateRoute: AppRouters.routes,
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
          settings: settings,
          builder: (context) {
            switch (settings.name) {
              case '/we-channel':
                return WeChannelPage();
              case '/navigator':
                return NavigatorPage();
              case '/':
                return MyHomePage(title: 'Flutter Demo Home Page');
              default:
                return Scaffold(body: Center(child: Text('Page not found')));
            }
          },
        );
      },
      // theme: myTheme,
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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // ContainerPage(),
            // SizedBoxPage(),
            // ExpandedPage(),
            // PaddingPage(),
            // CenterPage(),
            // AlignPage(),
            // LayoutPage(),
            // StackPage(),
            // PositionedPage(),
            // ButtonsPage(),
            // CardPage(),
            // ImagePage(),
            // AspectRatioPage(),
            // _buildScaffoldPageButton(context),
            // _buildAppBarButton(context),
            // _buildSliverAppBarPageButton(context),
            // ListViewPage(),
            // GridViewPage(),
            // _buildSingleChildScrollViewPageButton(context),
            // RefreshIndicatorPage(),
            // PageViewPage(),
            // RichTextPage(),
            // TextFieldPage(),
            // TextFormFieldPage(),
            // AlertDialogPage(),
            // BottomSheetDialogPage(),
            // _buildBottomNavigationBarPageButton(context),
            // _buildDrawerPageButton(context),
            // SnackBarPage(),
            // LoadingPage(),
            // CheckboxRadioPage(),
            // SwitchPage(),
            // DatePickerPage(),
            // _buildNavigatorPageButton(context),
            // _buildLiquidSwipePageButton(context),
            // _buildAsynchronousPageButton(context),

            Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/we-channel');
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

  MaterialButton _buildNavigatorPageButton(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        Navigator.pushNamed(context, '/navigator');
      },
      child: Text('Navigator Page'),
    );
  }

  MaterialButton _buildDrawerPageButton(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => DrawerPage(),
          ),
        );
      },
      child: Text('Drawer Page'),
    );
  }

  MaterialButton _buildAsynchronousPageButton(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => AsynchronousPage(),
          ),
        );
      },
      child: Text('Asynchronous Page'),
    );
  }

  MaterialButton _buildLiquidSwipePageButton(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => LiquidSwipePage(),
          ),
        );
      },
      child: Text('Liquid Swipe Page'),
    );
  }

  MaterialButton _buildBottomNavigationBarPageButton(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => BottomNavigationBarPage(),
          ),
        );
      },
      child: Text('Bottom Navigation Bar Page'),
    );
  }

  MaterialButton _buildSingleChildScrollViewPageButton(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => SingleChildScrollViewPage(),
          ),
        );
      },
      child: Text('Single Child Scroll View Page'),
    );
  }

  MaterialButton _buildScaffoldPageButton(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => ScaffoldPage(),
          ),
        );
      },
      child: Text('Scaffold Page'),
    );
  }

  MaterialButton _buildAppBarButton(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => AppBarPage(),
          ),
        );
      },
      child: Text('App Bar'),
    );
  }

  MaterialButton _buildSliverAppBarPageButton(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => SliverAppBarPage(),
          ),
        );
      },
      child: Text('Sliver App Bar'),
    );
  }
}
