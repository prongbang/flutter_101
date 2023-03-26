import 'package:flutter/foundation.dart';

abstract class DataStoreDataSource {
  T? read<T>(String key);

  Future<void> write(String key, dynamic value);

  Future<void> writeIfNull(String key, dynamic value);

  Future<void> remove(String key);

  Future<void> erase();

  T getKeys<T>();

  T getValues<T>();

  bool hasData(String key);

  VoidCallback listen(VoidCallback value);

  VoidCallback listenKey(String key, Function(dynamic) callback);
}
