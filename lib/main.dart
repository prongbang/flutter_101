import 'package:core/app_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_101/src/di/service_locator.dart';
import 'package:flutter_101/src/login/login_page.dart';
import 'package:flutter_101/src/my_bloc_observer.dart';
import 'package:flutter_101/src/my_home_page.dart';
import 'package:flutter_101/src/navigator/navigator_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:get_storage/get_storage.dart';
import 'package:we_channel/presentation/we_channel_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  GetIt.I.registerFactory(
    () => AppConfig(
      applicationName: "Flutter 101",
      buildFlavor: AppConfig.productionFlavor,
      baseURL: "https://jsonplaceholder.typicode.com",
    ),
  );
  print("Flavor: ${AppConfig.productionFlavor}");

  ServiceLocator.setupLocator();

  Bloc.observer = MyBlocObserver();

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
                return MyHomePage();
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
      home: MyHomePage(),
      // home: FutureBuilder<User>(
      //   future: User().get(),
      //   builder: (context, snapshot) {
      //     if (snapshot.hasData) {
      //       return MyHomePage();
      //     }
      //     return LoginPage();
      //   },
      // ),
    );
  }
}
