import 'package:flutter_101/src/getit/str_reverser/reverser.dart';
import 'package:flutter_101/src/getit/str_reverser/str_reverser.dart';
import 'package:get_it/get_it.dart';

class ReverserLocator {
  static setup() {
    GetIt.I.registerFactory<Reverser>(() => StrReverser(GetIt.I.get()));
  }
}
