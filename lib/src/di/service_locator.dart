import 'package:core/core_locator.dart';
import 'package:get_it/get_it.dart';
import 'package:network/network_locator.dart';

GetIt locator = GetIt.instance;

class ServiceLocator {
  static void setupLocator() {
    CoreLocator.setup();
    NetworkLocator.setup();
  }
}
