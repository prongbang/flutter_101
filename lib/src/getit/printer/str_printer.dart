import 'package:flutter_101/src/getit/printer/printer.dart';

class StrPrinter implements Printer {
  @override
  void println(String message) {
    print(message);
  }
}
