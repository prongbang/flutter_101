import 'package:core/app_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_101/src/asynchronous/asynchronous_page.dart';
import 'package:flutter_101/src/di/service_locator.dart';
import 'package:flutter_101/src/login/login_page.dart';
import 'package:flutter_101/src/login/user.dart';
import 'package:flutter_101/src/navigator/navigator_page.dart';
import 'package:flutter_101/src/packages/liquid_swipe_page.dart';
import 'package:flutter_101/src/qr_reader/qr_reader_page.dart';
import 'package:flutter_101/src/state/bloc_page.dart';
import 'package:flutter_101/src/state/state_page.dart';
import 'package:flutter_101/src/widgets/_14scaffold/scaffold_page.dart';
import 'package:flutter_101/src/widgets/_15appbar/appbar_page.dart';
import 'package:flutter_101/src/widgets/_15appbar/sliver_app_bar_page.dart';
import 'package:flutter_101/src/widgets/_18scrolling/single_child_scroll_view_page.dart';
import 'package:flutter_101/src/widgets/_23bottombar/bottom_navigation_bar_page.dart';
import 'package:flutter_101/src/widgets/_24drawer/drawer_page.dart';
import 'package:get_it/get_it.dart';
import 'package:get_storage/get_storage.dart';
import 'package:we_channel/presentation/we_channel_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
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
              case '/':
                return MyHomePage(title: 'Flutter Demo Home Page');
              case '/login':
                return LoginPage();
              case '/navigator':
                return NavigatorPage();
              case '/we-channel':
                return WeChannelPage();
              default:
                return Scaffold(body: Center(child: Text('Page not found')));
            }
          },
        );
      },
      // theme: myTheme,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      // home: FutureBuilder<User>(
      //   future: User().get(),
      //   builder: (context, snapshot) {
      //     if (snapshot.hasData) {
      //       return MyHomePage(title: 'Flutter Demo Home Page');
      //     }
      //     return LoginPage();
      //   },
      // ),
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
            // _buildStatePageButton(context),
            // _buildBlocPageButton(context),
            // _buildWeChannelPageButton(context),
            // _buildQrReaderPageButton(context),
            // _buildLoginPageButton(context),
            // _buildLogoutButton(context),

            Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
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

  Widget _buildNavigatorPageButton(BuildContext context) {
    return CustomButton(
      text: 'Navigator Page',
      color: Colors.amber,
      onPressed: () {
        Navigator.pushNamed(context, '/navigator');
      },
    );
  }

  Widget _buildDrawerPageButton(BuildContext context) {
    return CustomButton(
      text: 'Drawer Page',
      color: Colors.orange,
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => DrawerPage(),
          ),
        );
      },
    );
  }

  Widget _buildBlocPageButton(BuildContext context) {
    return CustomButton(
      text: 'BloC Page',
      color: Colors.deepPurple,
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => BlocPage(),
          ),
        );
      },
    );
  }

  Widget _buildStatePageButton(BuildContext context) {
    return CustomButton(
      text: 'State Page',
      color: Colors.blue,
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => StatePage(),
          ),
        );
      },
    );
  }

  Widget _buildLoginPageButton(BuildContext context) {
    return CustomButton(
      text: 'Login Page',
      color: Colors.blue,
      onPressed: () {
        Navigator.pushReplacementNamed(context, '/login');
      },
    );
  }

  Widget _buildLogoutButton(BuildContext context) {
    return CustomButton(
      text: 'Logout',
      color: Colors.red,
      onPressed: () async {
        await User().logout();
        Navigator.pushReplacementNamed(context, '/login');
      },
    );
  }

  Widget _buildAsynchronousPageButton(BuildContext context) {
    return CustomButton(
      text: 'Asynchronous Page',
      color: Colors.green,
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => AsynchronousPage(),
          ),
        );
      },
    );
  }

  Widget _buildLiquidSwipePageButton(BuildContext context) {
    return CustomButton(
      text: 'Liquid Swipe Page',
      color: Colors.red,
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => LiquidSwipePage(),
          ),
        );
      },
    );
  }

  Widget _buildBottomNavigationBarPageButton(BuildContext context) {
    return CustomButton(
      text: 'Bottom Navigation Bar Page',
      color: Colors.cyan,
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => BottomNavigationBarPage(),
          ),
        );
      },
    );
  }

  Widget _buildSingleChildScrollViewPageButton(BuildContext context) {
    return CustomButton(
      text: 'Single Child Scroll View Page',
      color: Colors.lightGreenAccent,
      textColor: Colors.black,
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => SingleChildScrollViewPage(),
          ),
        );
      },
    );
  }

  Widget _buildScaffoldPageButton(BuildContext context) {
    return CustomButton(
      text: 'Scaffold Page',
      color: Colors.blueGrey,
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => ScaffoldPage(),
          ),
        );
      },
    );
  }

  Widget _buildAppBarButton(BuildContext context) {
    return CustomButton(
      text: 'App Page',
      color: Colors.grey,
      textColor: Colors.black,
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => AppBarPage(),
          ),
        );
      },
    );
  }

  Widget _buildSliverAppBarPageButton(BuildContext context) {
    return CustomButton(
      text: 'Sliver App Page',
      color: Colors.brown,
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => SliverAppBarPage(),
          ),
        );
      },
    );
  }

  Widget _buildQrReaderPageButton(BuildContext context) {
    return CustomButton(
      text: 'Qr Reader Page',
      color: Colors.greenAccent,
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => QrReaderPage(),
          ),
        );
      },
    );
  }

  Widget _buildWeChannelPageButton(BuildContext context) {
    return CustomButton(
      text: 'WE Channel Page',
      color: Colors.pink,
      onPressed: () {
        Navigator.pushNamed(context, '/we-channel');
      },
    );
  }
}

class CustomButton extends StatelessWidget {
  final Color color;
  final Color textColor;
  final VoidCallback onPressed;
  final String text;

  const CustomButton({
    Key key,
    @required this.color,
    @required this.onPressed,
    @required this.text,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: MaterialButton(
          color: color,
          textColor: textColor,
          height: 60,
          onPressed: onPressed,
          child: Text(text),
        ),
      ),
    );
  }
}
