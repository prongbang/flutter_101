import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

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
    return PageTransition(
        settings: settings,
        child: target,
        type: PageTransitionType.rightToLeft);
  }

  static backTransition(RouteSettings settings, Widget target) {
    return PageTransition(
        settings: settings,
        child: target,
        type: PageTransitionType.leftToRight);
  }

  static toTopTransition(RouteSettings settings, Widget target) {
    return PageTransition(
        settings: settings,
        child: target,
        type: PageTransitionType.bottomToTop);
  }
}
