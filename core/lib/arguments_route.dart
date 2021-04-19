import 'package:flutter/material.dart';

extension ArgumentsRouteContext on BuildContext {
  Map<String, dynamic> arguments() {
    final Map<String, dynamic> args = ModalRoute.of(this).settings.arguments;
    return args ?? {};
  }

  T routeArguments<T>() {
    final arguments = ModalRoute.of(this).settings.arguments;
    print("arguments: $arguments");
    final T args = arguments;
    return args;
  }

  T argumentsKey<T>(String key) {
    return arguments()[key];
  }
}
