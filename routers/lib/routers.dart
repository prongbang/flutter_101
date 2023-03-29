import 'package:flutter/material.dart';
import 'package:flutter_page_transition_plus/flutter_page_transition_plus.dart';

class AppRouters {
  static final RouteFactory routes = (RouteSettings settings) {
    print("navigate: ${settings.name}");
    switch (settings.name) {
      // case NavigatorRoute.main:
      // return nextTransition(settings, MainPage());
      default:
        return nextTransition(
          settings,
          Scaffold(body: Center(child: CircularProgressIndicator())),
        );
    }
  };

  static nextTransition(RouteSettings settings, Widget target) {
    return FlutterPageTransition.next(settings, target);
  }

  static toTopTransition(RouteSettings settings, Widget target) {
    return FlutterPageTransition.fadeUpwards(settings, target);
  }
}
