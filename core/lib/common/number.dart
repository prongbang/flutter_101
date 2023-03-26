import 'dart:math';

import 'package:flutter/foundation.dart';

class Number {
  static int random({int min = 0, required int max}) {
    final _random = Random();
    return min + _random.nextInt(max - min);
  }
}
