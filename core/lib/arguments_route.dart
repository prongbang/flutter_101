import 'package:flutter/material.dart';

extension ArgumentsRouteContext on BuildContext {
  Map<String, dynamic> arguments() {
    final Map<String, dynamic>? args = ModalRoute.of(this)?.settings.arguments as Map<String, dynamic>?;
    return args ?? {};
  }

  T? routeArguments<T>() {
    final arguments = ModalRoute.of(this)?.settings.arguments;
    print("arguments: $arguments");
    return arguments as T?;
  }

  T argumentsKey<T>(String key) {
    return arguments()[key];
  }
}
