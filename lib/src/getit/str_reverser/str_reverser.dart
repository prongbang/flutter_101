import 'package:flutter_101/src/getit/printer/printer.dart';
import 'package:flutter_101/src/getit/str_reverser/reverser.dart';

/// How to use with get_it:
///
/// final reverser = GetIt.I.get<Reverser>();
/// final result = reverser.reverse('Flutter');
///
/// How to use with manual:
///
/// final printer = StrPrinter();
/// final reverser = StrReverser(printer);
/// final result = reverser.reverse('Flutter');
///
class StrReverser implements Reverser {
  final Printer strPrinter;

  StrReverser(this.strPrinter);

  @override
  Future<String> reverse(String value) {
    final reversed = value.split('').reversed.join('');

    // Print string
    strPrinter.print(reversed);

    return Future.value(reversed);
  }
}
