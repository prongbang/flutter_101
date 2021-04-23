import 'package:flutter_101/src/getit/printer/printer_locator.dart';
import 'package:flutter_101/src/getit/str_reverser/reverser_locator.dart';

/// How to use:
/// void main() {
///   ExampleServiceLocator.setupLocator();
///   ...
/// }
class ExampleServiceLocator {
  static setupLocator() {
    // TODO get it register
    ReverserLocator.setup();
    PrinterLocator.setup();
  }
}
