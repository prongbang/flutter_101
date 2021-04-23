import 'package:flutter_101/src/getit/printer/printer.dart';
import 'package:flutter_101/src/getit/printer/str_printer.dart';
import 'package:get_it/get_it.dart';

class PrinterLocator {
  static setup() {
    GetIt.I.registerFactory<Printer>(() => StrPrinter());
  }
}
